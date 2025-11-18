*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Click on Checkout button
    Wait Until Element Is Visible    id:checkout
    sleep    3s
    Click Button    id:checkout