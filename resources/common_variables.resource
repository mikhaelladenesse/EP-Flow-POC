*** Settings ***
Documentation    This is a resource file. It contains common libraries and global variables of test scripts.
Library          SeleniumLibrary


*** Variables ***
# URLS
${LOGIN_URL}            https://epflowui-testflow.azurewebsites.net/auth/login

# Browsers
@{BROWSER_LIST}         ${CHROME}    ${FIREFOX}    ${EDGE}
${CHROME}               chrome
${FIREFOX}              firefox
${EDGE}                 edge

# Login Variables
${PAGE_TITLE}                     EP Flow
${LOGIN_USERNAME_BOX}             id=login_username
${LOGIN_PASSWORD_BOX}             id=login_password
${LOGIN_BUTTON}                   xpath=//button[@type='submit']
