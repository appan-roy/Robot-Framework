*** Settings ***
Library    SeleniumLibrary 

*** Test Cases ***
Login Test
    [Documentation]    This is a sample login test
    Open Browser    ${URL}    ${Browser}    
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Input Text    id=txtUsername    @{Cred}[0]
    Input Text    id=txtPassword    &{Credentials}[password]
    Click Element    id=btnLogin
    Click Link    Welcome Admin
    Sleep    2      
    Click Link    Logout
    Close Browser
    Log    Test completed
    Log    This test was executed by %{username} on %{os}
    
*** Variables ***
# Scalar variables
${URL}    https://opensource-demo.orangehrmlive.com/
${Browser}    Chrome

# List variables
@{Cred}    Admin    admin123

# Dictionary Variables
&{Credentials}    username=Admin    password=admin123