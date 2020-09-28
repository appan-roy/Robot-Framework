*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${browser}    headlesschrome
${url}    http://testautomationpractice.blogspot.com/

*** Test Cases ***
TestAlert
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    1 second
    
    #Alert should be present accepts the alert by default
    Click Element    xpath://*[@id="HTML9"]/div[1]/button    
    Sleep    1    
    Alert Should Be Present    Press a button!
    
    #Accept alert
    Click Element    xpath://*[@id="HTML9"]/div[1]/button    
    Sleep    1    
    Handle Alert    Accept
    
    #Dismiss alert
    Click Element    xpath://*[@id="HTML9"]/div[1]/button    
    Sleep    1    
    Handle Alert    Dismiss
    
    #Leave alert
    Click Element    xpath://*[@id="HTML9"]/div[1]/button    
    Sleep    1    
    Handle Alert    Leave

    Close Browser
