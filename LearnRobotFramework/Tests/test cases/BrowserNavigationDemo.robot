*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${url1}    https://www.google.com/
${url2}    https://www.bing.com/
${browser}    chrome

*** Test Cases ***
TestBrowserNavigation
    Open Browser    ${url1}    ${browser}
    ${loc1}    Get Location    #returns url
    Log To Console    ${loc1}    
    
    Go To    ${url2}
    ${loc2}    Get Location    #returns url
    Log To Console    ${loc2} 
    
    Go Back
    ${loc1}    Get Location    #returns url
    Log To Console    ${loc1} 
    
    Close Browser
    