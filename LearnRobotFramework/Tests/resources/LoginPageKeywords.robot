*** Settings ***
Library    SeleniumLibrary    
Variables    ../pages/LoginPageLocators.py

*** Keywords ***
Enter Username
    [Arguments]    ${uname}
    Input Text    ${userName}    ${uname}
    
Enter Password
    [Arguments]    ${pwd}
    Input Password    ${passWord}    ${pwd}    
    
Click On Login Button
    Click Button    ${loginButton}

