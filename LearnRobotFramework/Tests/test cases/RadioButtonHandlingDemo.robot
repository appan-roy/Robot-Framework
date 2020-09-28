*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${browser}    chrome
${url}    http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
TestRadioButton
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
    Title Should Be    practice-form
    
    Select Radio Button    sex    Female
    
    Sleep    1    
    
    Select Radio Button    exp    5
    
    Sleep    1    
    
    Close Browser
    