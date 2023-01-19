*** Settings ***
Library  SeleniumLibrary
*** Variables ***

${URL}  https://www.thetestingworld.com/testings
${Browser}  Chrome

*** Test Cases ***
TC_005 Testcase for the user-define Keywords and Argument passing.
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Set Selenium Speed  1seconds
    Login fields  testing  testing123  praveen@gmail.com


*** Keywords ***
Login fields
    [Arguments]  ${username}  ${password}  ${email}
    Input Text  name:fld_username  ${username}
    Input Text  name:fld_password  ${password}
    Input Text  name:fld_email     ${email}

