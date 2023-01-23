*** Settings ***
Library  SeleniumLibrary
Library  Collections


*** Test Cases ***
TC__009 Usage of Run Keywords, Run Keywords if, in robot
    ${var_key}  Set Variable  log to console
    Run Keyword  ${var_key}  pk077@gmail.com

TC__009(2) Run Keyword if usage
    ${vartest}=  Set Variable  No
    Run Keyword If  '${vartest}'=='Yes'  log to console  value found
    Run Keyword If  '${vartest}'=='No'  log to console  value Not found
