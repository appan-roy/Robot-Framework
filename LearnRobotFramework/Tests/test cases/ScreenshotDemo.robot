*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${url1}    https://www.google.com/
${browser}    chrome

*** Test Cases ***
TestScreenshot
    Open Browser    ${url1}    ${browser}
    Maximize Browser Window
    
    Input Text    name:q    Robot Framework    
    
    #if path is not mentioned for screenshots it will be stored in project root directory by default
    Capture Element Screenshot    xpath://*[@id="hplogo"]    ./Screenshots/GoogleLogo.png
    Capture Page Screenshot    ./Screenshots/GoogleHomePage.png    
    
    Close Browser
    