*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Browser}  Chrome
${URL}  https://www.testingworld.com/testings

*** Test Cases ***
TC_002_inputBox_wokrkings
    Open Browser  ${URL}  ${Browser}
    