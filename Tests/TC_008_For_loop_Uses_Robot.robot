*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Test Cases ***
TC__008 Working of the For loop in the Robot Framework
    
    @{listdata}    Create List  1  2  3  4  5  6  7  8  9
    FOR  ${i}  IN  @{listdata}     #IN RANGE also a function in for loop.
        Log To Console  ${i}
    END
    