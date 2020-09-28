*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${browser}    chrome
${url}    https://opensource-demo.orangehrmlive.com/

*** Keywords ***
Open Application
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
Close Application
    Close Browser
    
