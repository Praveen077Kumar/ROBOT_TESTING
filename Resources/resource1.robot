*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${urlArgs}  http://www.thetestingworld.com/testings
${browserArgs}  Chrome

*** Keywords ***
Start Browser and Maximize Window without args
    Open Browser  ${urlArgs}  ${browserArgs}
    Maximize Browser Window

Start Browser and Maximize Window with args
    [Arguments]  ${Url}  ${browser}
    Open Browser  ${Url}  ${browser}
    Maximize Browser Window
    
Start Browser and Maximize Window with RETURN arguments
    [Arguments]  ${Url}  ${browser}
    Open Browser  ${Url}  ${browser}
    Maximize Browser Window
    ${Title}=  Get Title
    [Return]  ${Title}
