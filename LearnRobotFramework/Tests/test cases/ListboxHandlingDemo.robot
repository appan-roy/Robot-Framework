*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${browser}    chrome
${url}    http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
TestListbox
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
    Set Selenium Speed    1 second
    
    Title Should Be    practice-form
    
    Select From List By Label    selenium_commands    Switch Commands
    Select From List By Index    selenium_commands    4    
    
    Unselect From List By Label    selenium_commands    Switch Commands
    Unselect From List By Index    selenium_commands    4
    
    Close Browser
    