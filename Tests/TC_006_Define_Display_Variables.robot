*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
using the variable declaration inside the test case:
    ${var1}=    set variable  Hello World
    Log To Console  ${var1}  


*** Keywords ***
    