*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${browser}    chrome
${url1}    https://www.google.com/
${url2}    http://testautomationpractice.blogspot.com/   

*** Test Cases ***
TestRightClick
    Open Browser    ${url1}    ${browser}
    Maximize Browser Window
    
    #right click
    Open Context Menu    name:q
    
    Sleep    2    
    Close Browser
    
TestDoubleClick
    Open Browser    ${url2}    ${browser}
    Maximize Browser Window
    
    #double click
    Double Click Element    xpath://*[@id="HTML10"]/div[1]/button
    
    Sleep    2    
    Close Browser
    
TestDragAndDrop
    Open Browser    ${url2}    ${browser}
    Maximize Browser Window
    
    #drag and drop
    Drag And Drop    id:draggable    id:droppable
    
    Sleep    5    
    Close Browser
    