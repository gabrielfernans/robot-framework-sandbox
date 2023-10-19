*** Settings ***
Library     SeleniumLibrary
Library     String


*** Variables ***
${CREATION_CODE}                    association_type_henry
${CREATION_NAME}                    Henry the best
${CREATION_SECTION_BUTTON}          //a[contains(@class, 'ui labeled icon button ')]

${CREATION_CODE_INPUT}              //input[contains(@id, 'sylius_product_association_type_code')]
${CREATION_BUTTON}                  //button[contains(@type, 'submit')]
${CREATION_SUCCESS_MESSAGE}         Product association type has been successfully created.
${ERROR_MESSAGE}                    This form contains errors
${ALL_ITEMS_CHECKBOX}               //input[contains(@type, 'checkbox')]
${DELETE_BUTTON}                    //button[contains(@class, 'ui red labeled icon button')]
${DELETE_BUTTON_SINGLE}             //button[contains(@class, 'ui red labeled icon button') and not(@disabled)]
${DELETE_CONFIRMATION_BUTTON}       //div[contains(@id, 'confirmation-button')]
${DELETE_SUCCESS_MESSAGE}           Product association type has been successfully deleted.
${DELETE_ALL_SUCCESS_MESSAGE}       Product_association_types have been successfully deleted.
${FILTER_NAME_INPUT}                //input[contains(@id, 'criteria_name_value')]
${FILTER_CODE_INPUT}                //input[contains(@id, 'criteria_code_value')]
${FILTER_BUTTON}                    //button[contains(@class, 'ui blue labeled icon button')]
${SINGLE_ROW_EDIT_BUTTON}           i[contains(@class, 'icon pencil')]
${EDIT_SAVE_BUTTON}                 //button[contains(@id, 'sylius_save_changes_button')]
${EDIT_SAVE_MESSAGE}                Product association type has been successfully updated.
${UN_ES_ASSOCIATION}                //input[contains(@id, 'sylius_product_association_type_translations_en_US_name')]


*** Test Cases ***
Create a Unique Association Type
    ${RANDOM_STRING}    Generate Random String    8    [LETTERS]
    Open Browser    http://localhost:9990/admin    Firefox
    Input Text    id=_username    sylius
    Input Text    id=_password    sylius
    Click Button    css=.primary
    Click Link    css=.last
    Click Element    ${CREATION_SECTION_BUTTON}
    Input Text    ${CREATION_CODE_INPUT}    ${CREATION_CODE}_${RANDOM_STRING}
    Input Text    ${UN_ES_ASSOCIATION}    ${CREATION_NAME}
    Click Element    ${CREATION_BUTTON}
    Wait Until Page Contains    ${CREATION_SUCCESS_MESSAGE}
    Close Browser

Delete All Association Types
    Open Browser    http://localhost:9990/admin    Firefox
    Input Text    id=_username    sylius
    Input Text    id=_password    sylius
    Click Button    css=.primary
    Click Link    css=.last
    Click Element    ${ALL_ITEMS_CHECKBOX}
    Click Element    ${DELETE_BUTTON}
    Click Element    ${DELETE_CONFIRMATION_BUTTON}
    Wait Until Page Contains    ${DELETE_ALL_SUCCESS_MESSAGE}
    Close Browser

Create an Association Type
    Open Browser    http://localhost:9990/admin    Firefox
    Input Text    id=_username    sylius
    Input Text    id=_password    sylius
    Click Button    css=.primary
    Click Link    css=.last
    Click Element    ${CREATION_SECTION_BUTTON}
    Input Text    ${CREATION_CODE_INPUT}    ${CREATION_CODE}
    Input Text    ${UN_ES_ASSOCIATION}    ${CREATION_NAME}
    Click Element    ${CREATION_BUTTON}
    Wait Until Page Contains    ${CREATION_SUCCESS_MESSAGE}
    Close Browser

Should Not Create with a Similar Name
    Open Browser    http://localhost:9990/admin    Firefox
    Input Text    id=_username    sylius
    Input Text    id=_password    sylius
    Click Button    css=.primary
    Click Link    css=.last
    Click Element    ${CREATION_SECTION_BUTTON}
    Input Text    ${CREATION_CODE_INPUT}    ${CREATION_CODE}
    Input Text    ${UN_ES_ASSOCIATION}    ${CREATION_NAME}
    Click Element    ${CREATION_BUTTON}
    Wait Until Page Contains    ${ERROR_MESSAGE}
    Close Browser

Should Not Create Without a Name
    Open Browser    http://localhost:9990/admin    Firefox
    Input Text    id=_username    sylius
    Input Text    id=_password    sylius
    Click Button    css=.primary
    Click Link    css=.last
    Click Element    ${CREATION_SECTION_BUTTON}
    Input Text    ${CREATION_CODE_INPUT}    ${CREATION_CODE}
    Click Element    ${CREATION_BUTTON}
    Wait Until Page Contains    ${ERROR_MESSAGE}
    Close Browser

Filter by Code
    Open Browser    http://localhost:9990/admin    Firefox
    Input Text    id=_username    sylius
    Input Text    id=_password    sylius
    Click Button    css=.primary
    Click Link    css=.last
    Input Text    ${FILTER_CODE_INPUT}    ${CREATION_CODE}
    Click Element    ${FILTER_BUTTON}
    Wait Until Page Contains    ${CREATION_CODE}
    Close Browser

Filter by Name
    Open Browser    http://localhost:9990/admin    Firefox
    Input Text    id=_username    sylius
    Input Text    id=_password    sylius
    Click Button    css=.primary
    Click Link    css=.last
    Input Text    ${FILTER_NAME_INPUT}    ${CREATION_NAME}
    Click Element    ${FILTER_BUTTON}
    Wait Until Page Contains    ${CREATION_NAME}
    Close Browser

Filter by Both Code and Name
    Open Browser    http://localhost:9990/admin    Firefox
    Input Text    id=_username    sylius
    Input Text    id=_password    sylius
    Click Button    css=.primary
    Click Link    css=.last
    Input Text    ${FILTER_CODE_INPUT}    ${CREATION_CODE}
    Input Text    ${FILTER_NAME_INPUT}    ${CREATION_NAME}
    Click Element    ${FILTER_BUTTON}
    Wait Until Page Contains    ${CREATION_NAME}
    Close Browser

Delete an Association Type
    Open Browser    http://localhost:9990/admin    Firefox
    Input Text    id=_username    sylius
    Input Text    id=_password    sylius
    Click Button    css=.primary
    Click Link    css=.last
    Input Text    ${FILTER_NAME_INPUT}    ${CREATION_NAME}
    Click Element    ${FILTER_BUTTON}
    Click Element    ${DELETE_BUTTON_SINGLE}
    Click Element    ${DELETE_CONFIRMATION_BUTTON}
    Wait Until Page Contains    ${DELETE_SUCCESS_MESSAGE}
    Close Browser
