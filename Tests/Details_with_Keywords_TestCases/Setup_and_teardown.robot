*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/Resource2.robot
Test Setup  Start Browser and maximize browser    #Suite level Setup and teardown 
Test Teardown  close browser Window

*** Variables ***
${var}  http://www.thetestingworld.com/testings


*** Test Cases ***
Teardown and Test Setup 
    # [Setup]  Start Browser and maximize browser    #Teardown and Setup inside the Test case level
    # [Teardown]  close browser Window    
    Input Text  name:fld_username  Praveen
    Input Text  name:fld_email  Praveen@regular.com
    Input Text  name:fld_password  praveenpass

next test with tear down 
    # [Setup]  Start Browser and maximize browser /
    # [Teardown]  close browser Window   #TearDown and Setup inside the Test Case Level
    Input Text  name:phone  8006900335 