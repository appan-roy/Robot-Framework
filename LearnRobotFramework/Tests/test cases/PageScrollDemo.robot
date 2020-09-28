*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${browser}    chrome
${url}    https://www.countries-ofthe-world.com/flags-of-the-world.html  

*** Test Cases ***
TestPageScrolling
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    2 seconds
    
    #for page scrolling, use execute javascript (H, V) scrolling method
    Execute Javascript    window.scrollTo(0, 1500)
    
    #go to the start of the page
    Execute Javascript    window.scrollTo(0, -document.body.scrollHeight)
    
    #for scrolling a particular element to be visible on page
    Scroll Element Into View    xpath://*[@id="content"]/div[2]/div[2]/table[1]/tbody/tr[86]/td[1]/img
    
    #go to the start of the page
    Execute Javascript    window.scrollTo(0, -document.body.scrollHeight)
    
    #go to the end of the page
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    
    Close Browser
    