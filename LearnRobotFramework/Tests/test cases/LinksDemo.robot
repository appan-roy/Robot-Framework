*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${browser}    chrome
${url}    https://www.countries-ofthe-world.com/flags-of-the-world.html    

*** Test Cases ***
TestLinks
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
    #get number of total links
    ${totalLinks}    Get Element Count    xpath://a
    Log To Console    ${totalLinks}    
    
    #log all the links to console
    :FOR    ${i}    IN RANGE    1    ${totalLinks}+1
    \    ${linkText}    Get Text    xpath:(//a)[${i}]
    \    Log To Console    ${linkText}   

    Close Browser
     