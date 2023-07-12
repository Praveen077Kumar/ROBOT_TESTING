*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${var}  http://www.thetestingworld.com/testings

*** Test Cases ***
TC_003_A Title Should be or not should be 
    Open Browser  ${var}  chrome
    Maximize Browser Window
    Title Should Be   Login & Sign Up Forms

TC_003_B Element should be Enabled or disabled
    Element Should Be Enabled  xpath://input[@placeholder='myusername']

TC_003_C Element should be visible or not
    Element Should Be Visible  xpath://input[@placeholder='myusername']

