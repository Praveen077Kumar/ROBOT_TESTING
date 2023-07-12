*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${var1}  https://thetestingworld.com/testings
${var2}  https://www.google.com


*** Test Cases ***
TC__01_Handling Multiple Windows in Browser & Switches to different browsers and perfom the task.  
    Open Browser  ${var1}  Chrome
    Maximize Browser Window
    Open Browser  ${var2}  Chrome
    Maximize Browser Window
    Switch Browser  1
    ${url1}  Get Location
    Log To Console  ${url1}
    Switch Browser  2
    ${url2}  Get Location
    Log To Console  ${url2}
