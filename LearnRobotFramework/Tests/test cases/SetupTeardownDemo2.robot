*** Settings ***
Documentation  This is a demo test case of test setup and tear down
Library     SeleniumLibrary

*** Test Cases ***
Facebook Login Test Case
    [Setup]    Start Browser and Maximize
    [Teardown]  Close Browser Window
    ${Title}=  Get Title
    Log  ${Title}
    Input Text  name=email  ${Username}
    Input Text  name=pass  ${Password}

Facebook Registration Test Case
    [Setup]  Start Browser and Maximize
    [Teardown]  Close Browser Window
    ${Title}=  Get Title
    Log  ${Title}
    Input Text  name=firstname  ${fname}
    Input Text  name=lastname  ${lname}
    Input Text  name=reg_email__  ${email}
    Input Text  name=reg_passwd__  ${pwd}
    Select From List By Value  name=birthday_day  7
    Select From List By Value  name=birthday_month  3
    Select From List By Value  name=birthday_year  1990
    Select Radio Button  sex  2

*** Keywords ***
Start Browser and Maximize

    [Tags]  This will open browser and maximize it

    Open Browser    ${URL}    ${Browser}

    Maximize Browser Window

Close Browser Window

    [Tags]  This will close the active browser

    Close Browser

*** Variables ***
${Browser}  Chrome
${URL}  https://www.facebook.com/
${Username}  appan12345@gmail.com
${Password}  12345
${fname}  Appan
${lname}  Roy
${email}  demomail@abc.com
${pwd}  1234
