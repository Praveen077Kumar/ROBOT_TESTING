*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/resource1.robot

*** Variables ***


*** Test Cases ***
Robot First Test Case without any argument of Resource file 
    Start Browser and Maximize Window without args
    Input Text  xpath://input[@name="fld_username"]  hello praveen 
    Close Browser


Robot First Test Case With argument of Resource file 
    Start Browser and Maximize Window with args  http://www.thetestingworld.com/testings  Firefox
    Input Text  xpath://input[@name="fld_username"]  hello praveen 
    Close Browser

Robot First Test Case With "RETURN" arguments of Resource file
    ${res}=  Start Browser and Maximize Window with RETURN arguments  http://www.thetestingworld.com/testings  Chrome
     Input Text  xpath://input[@name="fld_username"]  ${res}
     Close Browser
