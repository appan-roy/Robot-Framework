*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${browser}    chrome
${url}    http://testautomationpractice.blogspot.com/  

*** Test Cases ***
TestWebTable
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    5    
    
    #row and column count validation
    ${ActualRows}    Get Element Count    xpath:.//table[@name='BookTable']/tbody/tr
    ${ActualCols}    Get Element Count    xpath:.//table[@name='BookTable']/tbody/tr[2]/td    
    ${ExpectedRows}    Convert To Integer    7    
    ${ExpectedCols}    Convert To Integer    4
    Should Be Equal    ${ActualRows}    ${ExpectedRows}    
    Should Be Equal    ${ActualCols}    ${ExpectedCols}
    Log To Console    The table contains ${ActualRows} rows and ${ActualCols} columns
    
    #table data validation
    Table Should Contain    xpath:.//table[@name='BookTable']    Master In JS    
    Table Header Should Contain    xpath:.//table[@name='BookTable']    BookName    
    Table Row Should Contain    xpath:.//table[@name='BookTable']    5    3000
    Table Column Should Contain    xpath:.//table[@name='BookTable']    3    Javascript        
    Table Cell Should Contain    xpath:.//table[@name='BookTable']    5    2    Mukesh    
    
    #Access full table data
    :FOR    ${i}    IN RANGE    2    ${ActualRows}+1
    \    ${bookName}    Get Text    //table[@name='BookTable']/tbody/tr[${i}]/td   
    \    ${author}    Get Text    //table[@name='BookTable']/tbody/tr[${i}]/td[2]
    \    ${subject}    Get Text    //table[@name='BookTable']/tbody/tr[${i}]/td[3]
    \    ${price}    Get Text    //table[@name='BookTable']/tbody/tr[${i}]/td[4]
    \    Log To Console    ${bookName} | ${author} | ${subject} | ${price}
    
    Close Browser
    