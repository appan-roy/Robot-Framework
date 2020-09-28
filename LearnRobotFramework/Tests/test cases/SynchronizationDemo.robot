*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${browser}    chrome
${url}    http://demowebshop.tricentis.com/register        

*** Test Cases ***
TestSeleniumSpeed
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
    ${speed}    Get Selenium Speed
    Log To Console    ${speed}        
    
    Set Selenium Speed    1 second
    
    Select Radio Button    Gender    M
    Input Text    FirstName    John    
    Input Text    LastName    Doe
    Input Text    Email    johndoe@xyz.com
    Input Text    Password    johndoe
    Input Text    ConfirmPassword    johndoe
    
    ${speed}    Get Selenium Speed
    Log To Console    ${speed}
    
    Close Browser
    
TestSeleniumTimeout
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
    ${timeout}    Get Selenium Timeout 
    Log To Console    ${timeout}    
    
    Set Selenium Timeout    10 seconds
    Wait Until Page Contains    Register    
    
    Select Radio Button    Gender    M
    Input Text    FirstName    John    
    Input Text    LastName    Doe
    Input Text    Email    johndoe@xyz.com
    Input Text    Password    johndoe
    Input Text    ConfirmPassword    johndoe
    
    ${timeout}    Get Selenium Timeout 
    Log To Console    ${timeout}
    
    Close Browser

TestSeleniumImplicitWait
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
    ${impWait}    Get Selenium Implicit Wait
    Log To Console    ${impWait}        
    
    Set Selenium Implicit Wait    10 seconds    

    Select Radio Button    Gender    M
    Input Text    FirstName    John    
    Input Text    LastName    Doe
    Input Text    Email    johndoe@xyz.com
    Input Text    Password    johndoe
    Input Text    ConfirmPassword    johndoe
    
    ${impWait}    Get Selenium Implicit Wait
    Log To Console    ${impWait}
    
    Close Browser
    