*** Settings ***
Library  SeleniumLibrary
Library  XvfbRobot

Suite Setup     commons.Set Up Test Suite
Suite Teardown  commons.Tear Down Test Suite
Test Setup      Go To  ${GOOGLE_URL}

Metadata  Environment  %{ENV}

Resource  ../../../resources/commons.robot
Resource  ../../../resources/page_objects/google/results/results_page.robot
Resource  ../../../resources/page_objects/google/results/top_nav_page.robot
Resource  ../../../resources/page_objects/google/results/side_bar_page.robot
Resource  ../../../resources/page_objects/google/search_page.robot


*** Variables ***
${DUCKS_TEXT}  Ducks
${DUCK_TEXT}   Duck


*** Test Cases ***
Are_there_any_ducks_here
    [Documentation]  Debugging while the test suite is set up
    [Tags]           Functional
    search_page.Search For    Ducks
    top_nav_page.Verify Will Lead To More    ${DUCKS_TEXT}
    side_bar_page.Verify Is About    ${DUCK_TEXT}
    results_page.Verify Is About    ${DUCK_TEXT}
