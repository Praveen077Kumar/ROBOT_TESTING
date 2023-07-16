*** Settings ***
Library  SeleniumLibrary
Documentation  This Test Case is for Adding Documentation to levels.
Test Timeout  3s

*** Variables ***
${var}  http://www.thetestingworld.com/testings


*** Test Cases ***
TC_Test for the documentation addition in the tests 
    [Documentation]  this is the documentation for Open and closing Browser
    Open Browser  ${var}  Chrome 
    Close Browser
 

