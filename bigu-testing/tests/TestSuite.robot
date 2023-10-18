*** Settings ***
Resource    ../actions/Actions.robot
Resource    ../components/Components.robot
Resource    ../settings/Settings.robot


*** Test Cases ***
Should Open Login Page
    Open AuthPage
    Element Should Contain    //main    ${WelcomeMessage}
    Finish Test
