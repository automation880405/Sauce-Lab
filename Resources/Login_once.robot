*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/locators.robot
Resource    ../Resources/variables.robot
Library    Collections


*** Keywords ***
Login sauce Lab
    # Create Chrome Options object
    Open Browser    https://www.saucedemo.com    chrome


    
    # Launch Chrome with custom options

    Maximize Browser Window



    Wait Until Element Is Visible    ${USERANME_FEILD}
     Wait Until Element Is Visible    ${PASSWORD_FEILD}
    Input Text      ${USERANME_FEILD}    ${user_id}
    Input Text      ${PASSWORD_FEILD}    ${password}
    Click Button    ${LOGIN_BUTTON}

