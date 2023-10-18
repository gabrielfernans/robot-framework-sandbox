*** Settings ***
Documentation       File for definition of Actions

Resource            ../settings/Settings.robot
Resource            ../components/Components.robot


*** Keywords ***
Finish Test
    # Capture Page Screenshot
    Close Browser

# AUTHPAGE

Open AuthPage
    Open Browser    ${AUTH_PAGE}    ${BROWSER}
    Set Selenium Implicit Wait    ${DELAY}

Click on login button
    Click Element    ${LoginButton}

Click on register button
    Click Element    ${RegisterButton}
