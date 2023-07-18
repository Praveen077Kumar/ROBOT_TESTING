*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/Resource2.robot
Test Setup  Start Browser and maximize browser    #Suite level Setup and teardown 
Test Teardown  close browser Window
Suite Setup  Before Each Test Suite
Suite Teardown  After Each Test Suite

*** Variables ***
${var}  http://www.thetestingworld.com/testings


*** Test Cases ***
Teardown and Test Setup 
    Input Text  name:fld_username  Praveen
    Input Text  name:fld_email  Praveen@regular.com
    Input Text  name:fld_password  praveenpass

next test with tear down 
    Input Text  name:phone  8006900335 