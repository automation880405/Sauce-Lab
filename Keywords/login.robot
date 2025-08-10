*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/locators.robot
Resource    ../Resources/variables.robot
Test Template    Login With Valid Credentials
*** Variables ***
@{Login}
...     standard_user   secret_sauce
...    locked_out_user  secret_sauce
...    problem_user     secret_sauce
...    performance_glitch_user    secret_sauce
...    error_user       secret_sauce

*** Test Cases ***           USERNAME                 PASSWORD
Standard User Login          standard_user            secret_sauce
Locked Out User Login        locked_out_user          secret_sauce
Problem User Login           problem_user             secret_sauce
Performance Glitch Login     performance_glitch_user  secret_sauce
Error User Login             error_user               secret_sauce





*** Keywords ***
#Open SauceDemo Login Page
    #Open Browser    ${https://www.saucedemo.com}    chrome
    #Maximize Browser Window

Login With Valid Credentials
    [Arguments]     ${user_id}     ${password}
    Open Browser    https://www.saucedemo.com    chrome
    Wait Until Element Is Visible    ${USERANME_FEILD}
    Wait Until Element Is Visible    ${PASSWORD_FEILD}
    Input Text      ${USERANME_FEILD}    ${user_id}
    Input Text      ${PASSWORD_FEILD}    ${password}
    Click Button    ${LOGIN_BUTTON}

Verify Successful Login
    Page Should Contain Element    ${INVENTORY_PAGE}

Close Browser Session
    Close Browser