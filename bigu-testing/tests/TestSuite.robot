*** Settings ***
Documentation       File for Test suites

Resource            ../actions/Actions.robot
Resource            ../components/Components.robot
Resource            ../settings/Settings.robot

Suite Setup         Start Test
Suite Teardown      Finish Test


*** Test Cases ***
Should Open Login Page
    Go to auth page
    Page Should Contain    ${WelcomeMessage}

Should Register User
    Go to auth page
    Click on register button
    Type on register input name
    Type on register input email
    Type on register input telephone
    Click on register sex radio button
    Type on register input password
    Type on register input password confirm
    Click on register confirmation button
    Page Should Contain    ${RegisterSuccessMessage}

Should Login User
    Go to auth page
    Click on login button
    Type on login input email
    Type on login input password
    Click on login confirmation button
    Page Should Contain    ${DashboardText}
