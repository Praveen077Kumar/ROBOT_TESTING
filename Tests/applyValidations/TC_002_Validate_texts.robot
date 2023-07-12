*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${var}  https://www.thetestingworld.com/testings

*** Test Cases ***
TC__002 Validate Text on Element
    Open Browser  ${var}  chrome
    Element Text Should Be  xpath://div[@id="tab-content1"]//p  Register now and kick start your career as a Software Testing Pro!
    Element Should Contain  xpath://div[@id="tab-content1"]//p  Register now and kick start
    Input Text  //input[@placeholder='myusername']  Hello