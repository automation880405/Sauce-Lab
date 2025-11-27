*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    ../Keywords/Inventory.robot
Resource    ../Keywords/login.robot
Resource    ../Resources/variables.robot
Resource    ../Keywords/CartPage.robot
Resource    ../Keywords/checkout.robot
Resource    ../Keywords/Complete.robot
Resource    ../Resources/common_utility.robot
Library    Process


#Test Template    Login With Valid Credentials


*** Keywords ***
Delete Old Logs
    Remove Files    geckodriver-*.log
#Open SauceDemo Login Page
  #  Open Browser    ${URL}    ${Broswer}
   # Maximize Browser Window

#Close Chrome Password Popup

Open SauceDemo Login Page
    IF     '${Broswer}' == 'chrome'
        Open Chrome In Incognito
        Go To    ${URL}
        Maximize Browser Window
    ELSE
        Open Browser    ${URL}    ${Broswer}
        Maximize Browser Window
    END



Login With Valid Credentials
    [Arguments]     ${user_id}     ${password}
    #Open Browser    https://www.saucedemo.com    chrome
    Wait Until Element Is Visible    ${USERANME_FEILD}
    Wait Until Element Is Visible    ${PASSWORD_FEILD}
    Input Text      ${USERANME_FEILD}    ${user_id}
    Input Text      ${PASSWORD_FEILD}    ${password}
    Click Button    ${LOGIN_BUTTON}

validate different User login
    FOR    ${user}    IN    @{USERS}
        Open SauceDemo Login Page
        Login With Valid Credentials    ${user}    ${PASSWORD}
        Verify Successful Login
        Close Browser Session
    END



Verify Successful Login
    Page Should Contain Element    ${INVENTORY_PAGE}

Close Browser Session
    Close Browser