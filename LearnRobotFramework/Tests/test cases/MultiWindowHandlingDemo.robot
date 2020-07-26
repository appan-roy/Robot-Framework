*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://robotframework.org/


*** Test Cases ***
Multiple Window Handling
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Click Link    RPA    
    Sleep    2    
    Select Window  Robot Framework
    ${URL1}=    Get Location
    Log To Console    ${URL1}
    Sleep    2    
    Select Window  Robot Framework RPA
    ${URL2}=    Get Location
    Log To Console    ${URL2}    
    Close Browser
    
Multiple Window Handling2
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Click Link    RPA
    @{titles}   get window handles
    :FOR  ${a}  IN  @{titles}
    \   Select Window  ${a}
    \   ${var}=  Get Location
    \   Log  ${var}
    Close Browser