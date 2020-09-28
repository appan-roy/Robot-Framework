*** Settings ***
Library    SeleniumLibrary    
Variables    ../pages/HomePageLocators.py

*** Keywords ***
Verify Successful Login
    Page Should Contain    Dashboard
    
Click On Welcome Link
    Click Element    ${welcomeLink}    
    
Click On Logout Link
    Click Element    ${logoutLink}    
    
