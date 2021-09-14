*** Settings ***
Resource  ../../../commons.robot
Resource  ../../../element_locators/google/results/side_bar_locators.robot

Library    String

*** Keywords ***
Verify Is About
    [Arguments]    ${PARTIAL_TEXT}
    Wait Until Element Contains    ${TITLE}              ${PARTIAL_TEXT}
    Wait Until Element Contains    ${DESCRIPTION}        ${PARTIAL_TEXT}
    ${duck} =  Convert To Lower Case  ${PARTIAL_TEXT}
    Wait Until Element Contains    ${SPECIES}      ${duck}
    Wait Until Element Contains    ${COMMON}             ${PARTIAL_TEXT}
    Wait Until Element Contains    ${SEE_RESULTS_ABOUT}  ${PARTIAL_TEXT}
