*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Browser}  Chrome
${URL}  https://thetestingworld.com/testings

*** Test Cases ***
TC_002_inputBox_wokrkings
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Input Text  name:fld_username  PraveenKumar
    Input Text  xpath://input[@name='fld_email']  PraveenKumar077@gmail.com
    Clear Element Text  name:fld_username
    Close Browser
   
  