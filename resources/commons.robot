*** Settings ***
Library  SeleniumLibrary
Library  XvfbRobot


*** Keywords ***
Set Up Test Suite
    Set Library Search Order  SeleniumLibrary  AppiumLibrary
    Start Virtual Browser

Start Virtual Browser
    XvfbRobot.Start Virtual Display       %{DISPLAY_WIDTH}    %{DISPLAY_HEIGHT}
    Open Chrome Browser
    Set Window Size    %{DISPLAY_WIDTH}    %{DISPLAY_HEIGHT}

Open Chrome Browser
    ${options}   Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    Call Method  ${options}  add_argument  --no-sandbox
    Call Method  ${options}  add_argument  enable-automation
    Call Method  ${options}  add_argument  --headless
    Call Method  ${options}  add_argument  --disable-gpu
    Call Method  ${options}  add_argument  --disable-dev-shm-usage
    Call Method  ${options}  add_argument  --incognito
    ${prefs}     Create Dictionary    download.default_directory=/tmp
    Call Method  ${options}  add_experimental_option    prefs    ${prefs}
    Create Webdriver    Chrome    chrome_options=${options}

Tear Down Test Suite 
    Close Browser

Wait Until Element Loads Then Click It
    [arguments]  ${ELEMENT}
    Wait Until Element Is Visible  ${ELEMENT}  %{DELAY_TIMEOUT}
    Click Element  ${ELEMENT}

Verify Element Link Contains Text
    [Arguments]    ${ELEMENT}    ${PARTIAL_TEXT}
    Wait Until Element Is Visible    ${ELEMENT}
    ${href} =  Get Element Attribute      ${ELEMENT}      href
    Should Contain    ${href}      ${PARTIAL_TEXT}