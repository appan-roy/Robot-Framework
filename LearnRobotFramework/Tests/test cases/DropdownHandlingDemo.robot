*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${browser}    chrome
${url}    http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
TestDropdown
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
    Set Selenium Speed    1 second
    
    Title Should Be    practice-form
    
    Select From List By Label    continents    Asia
    Select From List By Index    continents    4    
    
    Close Browser
    