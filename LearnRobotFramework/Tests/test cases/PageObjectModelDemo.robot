*** Settings ***
Library    SeleniumLibrary    
Resource    ../resources/CommonKeywords.robot
Resource    ../resources/LoginPageKeywords.robot
Resource    ../resources/HomePageKeywords.robot

Suite Setup    Open Application
Suite Teardown    Close Application

*** Variables ***
${uname}    Admin
${pwd}    admin123

*** Test Cases ***
Validate OrangeHRM Login and Logout
    Login To Application    ${uname}    ${pwd}
    Verify Successful Login
    Logout From Application

*** Keywords ***
Login To Application
    [Arguments]    ${uname}    ${pwd}
    Enter Username    ${uname}
    Enter Password    ${pwd}
    Click On Login Button    
    
Logout From Application
    Click On Welcome Link
    Click On Logout Link
    
