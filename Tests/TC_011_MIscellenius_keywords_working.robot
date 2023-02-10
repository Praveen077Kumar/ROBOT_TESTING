*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${link}  https://www.google.com
*** Test Cases ***
TC__011_0.1 Screenshots Take of page and element.  Skip
    Open Browser  https://www.thetestingworld.com/testings
    Maximize Browser Window
    Input Text  name:fld_username  Testing
    Set Selenium Implicit Wait  5 seconds 
    Capture Page Screenshot  Screenshots/test11.png
    Input Text  name:fld_password  abcd
    Input Text  name:fld_email  testingworldindia@gmail.com 
    Close Browser
TC__011_0.2 Close All Browsers keyword.  Skip
    Open Browser  https://www.thetestingworld.com/testings
    Maximize Browser Window
    Input Text  name:fld_username  Testing
    Set Selenium Implicit Wait  5 seconds 
    Capture Page Screenshot  Screenshots/test11.png
    Input Text  name:fld_password  abcd
    Input Text  name:fld_email  testingworldindia@gmail.com
    Open Browser  https://www.google.com
    Maximize Browser Window
    Close All Browsers

TC__011_0.3 Go-Back, Go-TO and GetLocation keywords.  Skip
    open Browser  ${link}  Chrome
    ${URL}  Get Location
    Log To Console  ${URL}
    Maximize Browser Window
    Go To  https://www.thetestingworld.com/testings
    ${URL}  Get Location
    Log To Console  ${URL}
    Go Back
    ${URL}  Get Location
    Log To Console  ${URL}

TC__011_0.4 Execute Javascript at the Runtime.  Skip
    Open Browser  https://www.thetestingworld.com/testings
    Execute Javascript  window.scrollTo(0,1000)    
    Sleep  5 seconds

TC__011_0.5 Perform Mouse operations.  Skip
    Open Browser  https://www.thetestingworld.com
    Maximize Browser Window

    Open Context Menu  xpath://span[contains(text(),'VIDEOS')]  
    Double Click Element  xpath://span[contains(text(),'VIDEOS')]  

    Mouse Down  xpath://a[contains(text(),'Quick Demo')]
    Mouse Up  xpath://a[contains(text(),'Quick Demo')

    Mouse Over  xpath://span[contains(text(),'VIDEOS')]  
    Sleep  5 Seconds
    Close Browser


TC__011_0.5 Perform KeyBoard Keys operations.  skip
    Open Browser  https://www.thetestingworld.com
    Maximize Browser Window
    Click Link  xpath://a[contains(text(),'Quick Demo')]
    Press Keys  css:#wdform_1_element_first2  praveen
    # Press Keys  xpath://button[contains(text(),'Submit')]  \\13
    Sleep  5 seconds
    Close Browser

TC__011_0.6 Wait KeyWord Command Operation.
    Open Browser  https://www.thetestingworld.com
    Maximize Browser Window
    Set Selenium Timeout  10 seconds
    Wait Until Page Contains Element  xpath://a[normalize-space()='Quick Demo']
    Click Link  xpath://a[normalize-space()='Quick Demo']
    Close All Browsers

    