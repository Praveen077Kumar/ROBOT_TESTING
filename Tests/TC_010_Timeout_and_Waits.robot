*** Settings ***
Library  SeleniumLibrary



*** Test Cases ***
TC__010__0.1 Set Speed and get Speed and Sleep waits and speed methods.
    ${speed}  Get Selenium Speed
    Log To Console  ${speed}
    Open Browser   https://thetestingworld.com/testings
    Maximize Browser Window
    Set Selenium Speed  0.5 seconds
    Input Text  name:fld_username  Testing
    Sleep  5 seconds 
    Input Text  name:fld_password  abcd
    Input Text  name:fld_email  testingworldindia@gmail.com 
    ${speed}  Get Selenium Speed
    Log To Console  ${speed}
    Close Browser

TC_010__0.2 timeouts and waits methods.
    Open Browser   https://thetestingworld.com/testings
    Maximize Browser Window
    ${tm}  Get Selenium Timeout
    Log To Console  ${tm}
    Wait Until Page Contains  Testing
    Set Selenium Timeout  20 seconds 
    Input Text  name:fld_username  Testing
    Input Text  name:fld_password  abcd
    Input Text  name:fld_email  testingworldindia@gmail.com 
    Close Browser


TC__010__0.3 Implicit wait Timeouts method workings.
    Open Browser   https://thetestingworld.com/testings
    Maximize Browser Window
    ${default_T}  Get Selenium Implicit Wait
    Log To Console  ${default_T}
    Input Text  name:fld_username  Testing
    Set Selenium Implicit Wait  5 seconds 
    Input Text  name:fld_password  abcd
    Input Text  name:fld_email  testingworldindia@gmail.com 
    Close Browser



