*** Settings ***
Library  SeleniumLibrary

*** Variables ***



*** Keywords ***
Start Browser and maximize browser
    Open Browser  http://www.thetestingworld.com/testings  Chrome
    Maximize Browser Window



close browser Window
    ${title}=  Get Title
    log  ${title}
    Close browser


Before Each Test Suite
    Log  Before Each Test Suite 

After Each Test Suite
    Log  After Each Test Suite
