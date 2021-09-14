*** Settings ***
Resource  ../../../commons.robot
Resource  ../../../element_locators/google/results/results_locators.robot

Library    String

*** Keywords ***
Verify Is About
    [Arguments]    ${PARTIAL_TEXT}
    ${duck} =  Convert To Lower Case    ${PARTIAL_TEXT}
    Wait Until Element Contains    ${PEOPLE_ALSO_ASK}     ${duck}
    Wait Until Element Contains    ${RELATED_VIDEOS}      ${PARTIAL_TEXT}
    Wait Until Element Contains    ${TOP_STORIES}         ${PARTIAL_TEXT}
    Wait Until Element Contains    ${RELATED_SEARCHES}    ${duck}
