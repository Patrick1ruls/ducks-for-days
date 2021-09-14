*** Settings ***
Resource  ../../../commons.robot
Resource  ../../../element_locators/google/results/top_nav_locators.robot


*** Keywords ***
Verify Will Lead To More
    [Arguments]    ${PARTIAL_TEXT}
    Verify Element Link Contains Text    ${IMAGES}      ${PARTIAL_TEXT}
    Verify Element Link Contains Text    ${SHOPPING}    ${PARTIAL_TEXT}
    Verify Element Link Contains Text    ${VIDEOS}      ${PARTIAL_TEXT}
    Verify Element Link Contains Text    ${NEWS}        ${PARTIAL_TEXT}
