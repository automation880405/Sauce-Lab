*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Click on Checkout button
    Wait Until Element Is Visible    id:checkout
    Click Button    id:checkout