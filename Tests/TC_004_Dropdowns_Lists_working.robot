*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://thetestingworld.com/testings
${Browser}  Chrome

*** Test Cases ***
TC__004 Working with the Dropdowns and Lists 
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Set Selenium Speed  0.5seconds
    Select From List By Index  name:sex  2
    Select From List By Index  name:sex  1
    Select From List By Label  name:sex  Female
    Select From List By Value  name:sex  1