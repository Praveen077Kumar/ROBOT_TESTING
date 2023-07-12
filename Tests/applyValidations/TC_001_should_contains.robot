*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${var}  http://www.thetestingworld.com

*** Test Cases ***
TC_001 Should not contains 
    Open Browser  ${var}  chrome
    Maximize Browser Window
    Page Should Not Contain  VIDEOS11
    Click Element  xpath://span[normalize-space()='Contact Us']

TC_001_A Should contains

    # Open Browser  ${var} chrome
    # Maximize Browser Window
    Click Element  xpath://span[normalize-space()='Contact Us']
    Page Should Contain Textfield  xpath://input[@id='jform_contact_name']
    Input Text  xpath://input[@id='jform_contact_name']  praveen

TC_001 Validate checkbox input
    Click Element  xpath://span[normalize-space()='Contact Us']
    Select Checkbox  xpath://input[@id='jform_contact_email_copy']
    Checkbox Should Be Selected  xpath://input[@id='jform_contact_email_copy']
    Unselect Checkbox  xpath://input[@id='jform_contact_email_copy']
    Checkbox Should Not Be Selected  xpath://input[@id='jform_contact_email_copy']

    