*** Settings ***
Library  SeleniumLibrary
Resource   ../resources/common_variables.resource
Resource   ../resources/common_keyword.resource
Documentation  Verify Password Toggle Visibility

*** Keywords ***
Validate username and password field
    Page Should Contain Textfield    ${LOGIN_USERNAME_BOX}
    Page Should Contain Textfield    ${LOGIN_PASSWORD_BOX}
    [Arguments]        ${username}=m.ansay@energin.co    ${password}=P@ssword1234
    Input Text         ${LOGIN_USERNAME_BOX}  ${username}   
    Input Text         ${LOGIN_PASSWORD_BOX}  ${password}

Check Password Masking
    ${type}=    Get Element Attribute    ${LOGIN_PASSWORD_BOX}    type
    Should Be Equal As Strings    ${type}    password

Click the toggle button to unmask
    Click Element    xpath=(//*[name()='svg'])[3]

Verify the password is now unmasked
    ${unmasked_type}=    Get Element Attribute    ${LOGIN_PASSWORD_BOX}    type
    Should Be Equal As Strings    ${unmasked_type}    text
 

*** Test Cases ***
Verify Password masking
     Open Browser & Maximize Window       ${CHROME}   
     Validate username and password field
     Check Password Masking

Verify Password toggle visibility
     Open Browser & Maximize Window       ${CHROME}   
     Validate username and password field
     Click the toggle button to unmask
     Verify the password is now unmasked

Verify Toggle button password masking
     Open Browser & Maximize Window       ${CHROME}   
     Validate username and password field
     Click the toggle button to unmask
     Verify the password is now unmasked
     Click the toggle button to unmask
     Check Password Masking


     
    