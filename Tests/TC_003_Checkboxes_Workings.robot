*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://thetestingworld.com/testings
${Browser}  Chrome

*** Test Cases ***
TC__003 working with the checkboxes in the Robot Framework.
    Open Browser  ${URL}  ${Browser}                  #Url Opening
    Maximize Browser Window                           #Maximize window
    Select Radio Button  add_type  office             #RadioButton Working 
    Select Checkbox  name:terms                       #Checkbox Working
    Click Button  xpath://input[@value='Sign up']     #Button Click
    Click Link  xpath://a[text()='Read Detail']       #Link click
    