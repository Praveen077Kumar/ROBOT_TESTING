*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${var}  https://robotframework.org

*** Test Cases ***
TC_001 Multitab Handling 
    Open Browser  ${var}  Chrome
    Maximize Browser Window
    Click Link  robotic process automation (RPA)
    @{list}  Get Window Handles
    FOR    ${robot}    IN    @{list}
        Switch Window   ${robot}
        ${url}=  Get Location
        log to console  ${url}
    END 
 
