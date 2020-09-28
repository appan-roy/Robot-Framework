*** Settings ***
Library    SeleniumLibrary 

Test Setup    Open Application
Test Teardown    Close Application

*** Test Cases ***
Login Test
    [Documentation]    This is a sample login test
    Login
    Logout
        
*** Variables ***
# Scalar variables
${URL}    https://opensource-demo.orangehrmlive.com/
${Browser}    Chrome

# List variables
@{Cred}    Admin    admin123

# Dictionary Variables
&{Credentials}    username=Admin    password=admin123

*** Keywords ***
Open Application
    Open Browser    ${URL}    ${Browser}    
    Maximize Browser Window
    Set Browser Implicit Wait    5
Close Application
    Close Browser
    Log    Test completed
    Log    This test was executed by %{username} on %{os}
Login
    Input Text    id=txtUsername    &{Credentials}[username]
    Input Text    id=txtPassword    @{Cred}[1]
    Click Element    id=btnLogin    
Logout
    Click Link    Welcome Admin
    Sleep    2      
    Click Link    Logout
    