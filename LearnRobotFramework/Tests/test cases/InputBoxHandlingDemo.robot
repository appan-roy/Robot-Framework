*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${browser}    chrome
${url}    https://opensource-demo.orangehrmlive.com/

*** Test Cases ***
TestInputBox
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
    Title Should Be    OrangeHRM
    
    ${uname}    Set Variable    id:txtUsername
    Element Should Be Visible    ${uname}
    Element Should Be Enabled    ${uname}
    
    ${pwd}    Set Variable    id:txtPassword
    Element Should Be Visible    ${pwd}
    Element Should Be Enabled    ${pwd}
    
    Input Text    ${uname}    Admin
    Input Password    ${pwd}    admin123    
    
    Sleep    1    
    
    Clear Element Text    ${uname}
    Clear Element Text    ${pwd}
    
    Sleep    1    
    
    Close Browser
    