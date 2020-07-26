*** Settings ***
Library    SeleniumLibrary    


*** Test Cases ***
Login Test
    [Documentation]    This is a sample login test
    Open Browser    https://opensource-demo.orangehrmlive.com/    Chrome    
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Input Text    id=txtUsername    Admin
    Input Text    id=txtPassword    admin123
    Click Element    id=btnLogin
    Click Link    Welcome Admin
    Sleep    2      
    Click Link    Logout
    Close Browser
    Log    Test completed
    
