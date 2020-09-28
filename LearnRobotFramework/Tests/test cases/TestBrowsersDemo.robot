*** Settings ***
Library    SeleniumLibrary   

*** Test Cases ***
Chrome Test
    Open Browser    https://www.google.co.in/    Chrome
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Input Text    name=q    robot framework
    Press Keys    name=q    ENTER
    Sleep    3    
    Close Browser
    Log    Test completed    
      
IE Test
    Open Browser    https://www.google.co.in/    IE
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Input Text    name=q    robot framework
    Press Keys    name=q    ENTER
    Sleep    3    
    Close Browser
    Log    Test completed    
    