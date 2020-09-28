*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${browser}    chrome
${url}    http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
TestCheckbox
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
    Set Selenium Speed    1 second
    
    Title Should Be    practice-form
    
    Select Checkbox    BlackTea  
    Select Checkbox    RedTea
    Select Checkbox    oolongtea
    
    Unselect Checkbox    BlackTea
    Unselect Checkbox    RedTea
    Unselect Checkbox    oolongtea
    
    Close Browser
    