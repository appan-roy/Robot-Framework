*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://www.toolsqa.com/automation-practice-form/

*** Test Cases ***
Automation Practice Form

    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Click Link    ACCEPT    

    ${Win_Title}=  Fill Input Form  Appan  Roy  17/03/2019

    Log  ${Win_Title}

    Close Browser

*** Keywords ***
Fill Input Form

    [Tags]  To fill the inputs in the automation practice form

    [Arguments]  ${fname}  ${lname}  ${date}

    Input Text  name:firstname  ${fname}
    Input Text  id:lastname  ${lname}

    Select Radio Button  sex  Male

    Select Radio Button  exp  6

    Input Text  id:datepicker  ${date}

    Select Checkbox  id:profession-0
    Select Checkbox  id:profession-1

    Select Checkbox  id:tool-0
    Select Checkbox  id:tool-2

    Click Button  submit

    ${Title}=  Get Title

    [Return]  ${Title}