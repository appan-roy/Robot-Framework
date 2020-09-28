*** Settings ***
Library    SeleniumLibrary

Default Tags    Sanity    #This is a default tag which will be used for all the test cases if no other tags are mentioned in the test cases

*** Test Cases ***
First Test Case
    [Tags]    Regression    #This will override the default tag
    Log    This is the first test case
Second Test Case
    [Tags]    Smoke        #This will override the default tag
    Log    This is the second test case  
Third Test Case
    [Tags]    Regression    #This will override the default tag
    Log    This is the third test case
Fourth Test Case
    Log    This is the fourth test case   
Fifth Test Case
    Log    This is the fifth test case       
            