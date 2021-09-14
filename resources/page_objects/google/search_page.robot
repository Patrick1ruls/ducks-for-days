*** Settings ***
Resource  ../../commons.robot
Resource  ../../element_locators/google/search_locators.robot


*** Keywords ***
Search For
    [Arguments]  ${TEXT}
    Wait Until Element Is Visible  ${SEARCH_BAR}  %{DELAY_TIMEOUT}
    Input Text    ${SEARCH_BAR}     ${TEXT}
    commons.Wait Until Element Loads Then Click It    ${DROPDOWN_SEARCH_BUTTON}
