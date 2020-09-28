*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${browser}    chrome
${url}    https://www.selenium.dev/selenium/docs/api/java/index.html

*** Test Cases ***
TestFrame
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
    Select Frame    packageListFrame
    Click Link    org.openqa.selenium
    Unselect Frame
    
    Select Frame    packageFrame
    Click Link    Alert
    Unselect Frame
    
    Select Frame    classFrame
    Click Link    accept
    Unselect Frame
    
    Close Browser
    