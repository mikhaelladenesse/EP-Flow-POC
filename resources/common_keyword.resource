*** Settings ***
Documentation       This file contains common keywords.
Resource            ../resources/common_variables.resource


*** Keywords ***
Open Browser & Maximize Window
    [Documentation]                 This keyword opens a specifc browser and maximizes its window.
    [Arguments]                     ${browser}
    Open Browser                    ${LOGIN_URL}    ${browser}
    Maximize Browser Window
    Title Should Be                 ${PAGE_TITLE}

Login With Valid Credentials
    [Documentation]    This keyword is used for logging into EPX Flow.
    [Arguments]        ${username}    ${password}
    Input Text         ${LOGIN_USERNAME_BOX}    ${username}
    Input Text         ${LOGIN_PASSWORD_BOX}    ${password}
    Click Button       ${LOGIN_BUTTON}
