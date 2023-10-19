*** Settings ***
Documentation       File for definition of Actions

Resource            ../settings/Settings.robot
Resource            ../components/Components.robot


*** Keywords ***
Start Test
    Open Browser    ${BASE_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    ${DELAY}

Finish Test
    Close Browser

# AUTHPAGE

Go to auth page
    Go To    ${AUTH_PAGE}

Click on login button
    Click Element    ${LoginButtonQuery}

Click on register button
    Click Element    ${RegisterButtonQuery}

Type on register input name
    Input Text    ${RegisterNameQuery}    ${RegisterNameValue}

Type on register input email
    Input Text    ${RegisterEmailQuery}    ${RegisterEmailValue}

Type on register input telephone
    Input Text    ${RegisterTelephoneQuery}    ${RegisterTelephoneValue}

Click on register sex radio button
    Click Element    ${RegisterSexQuery}

Type on register input password
    Input Password    ${RegisterPasswordQuery}    ${RegisterPasswordValue}

Type on register input password confirm
    Input Password    ${RegisterPasswordConfirmQuery}    ${RegisterPasswordValue}

Click on register confirmation button
    Click Element    ${RegisterConfirmButtonQuery}

Type on login input email
    Input Text    ${LoginEmailQuery}    ${VALID_USER}

Type on login input password
    Input Password    ${LoginPasswordQuery}    ${VALID_PASSWORD}

Click on login confirmation button
    Click Element    ${LoginConfirmButtonQuery}
