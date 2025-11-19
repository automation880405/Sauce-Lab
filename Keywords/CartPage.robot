*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/locators.robot

*** Keywords ***
Click on Checkout button
    Wait Until Element Is Visible    id:${Checkout_button}
    sleep    3s
    Click Button    id:${Checkout_button}