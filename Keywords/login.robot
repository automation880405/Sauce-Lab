*** Settings ***
Library    ../Custom_Library/ChromeLibrary.py
Library    SeleniumLibrary
Resource    ../Resources/locators.robot
Resource    ../Resources/variables.robot

#Test Template    Login With Valid Credentials


*** Keywords ***
Open SauceDemo Login Page

    Open Browser    ${URL}    Firefox


   
    Maximize Browser Window

Open Chrome Without Popups
    ${driver}=    Create Custom Driver
    Create WebDriver    Chrome    driver=${driver}
    Go To    ${URL}

Login With Valid Credentials
    [Arguments]     ${user_id}     ${password}
    #Open Browser    https://www.saucedemo.com    chrome
    Wait Until Element Is Visible    ${USERANME_FEILD}
    Wait Until Element Is Visible    ${PASSWORD_FEILD}
    Input Text      ${USERANME_FEILD}    ${user_id}
    Input Text      ${PASSWORD_FEILD}    ${password}
    Click Button    ${LOGIN_BUTTON}

Verify Successful Login
    Page Should Contain Element    ${INVENTORY_PAGE}

Close Browser Session
    Close Browser