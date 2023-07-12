*** Settings ***
Library  SeleniumLibrary
                        #this section is for the configuration purpose

*** Variables ***
${Browser}  Chrome
${URL}  https://www.testingworld.com/testings
                                            #this section is for the variables to define 

*** Test Cases ***
TC_001 startBrowser and close browser   #this section is for the test cases
    Open Browser  ${URL}  ${Browser}       
                                        #note::> every variable declaration or the parameters should have the two spaces in-between of them
    Close Browser


# *** Keywords ***                       
                            #this sections is for the user-defined Keywords  


