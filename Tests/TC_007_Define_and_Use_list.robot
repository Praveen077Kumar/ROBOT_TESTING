*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***

*** Test Cases ***
TC__007 for the list operation use in robot testing.

    @{list1}  Create List  test  22.23  14  testingdata  10001
    ${listlength}  Get Length  ${list1}
    Log To Console  ${listlength}
    ${list_data}=    Get From List  ${list1}  3
    ${get_slice}=    Get Slice From List  ${list1}  1  3
    List Should Contain Value  ${list1}  22.23
    Log To Console  ${get_slice}
    Log To Console  ${list_data}