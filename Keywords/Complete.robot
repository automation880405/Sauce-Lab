*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Verify the order confirmation
    Wait Until Element Is Visible  //h2[text()="Thank you for your order!"]
    Should Be Equal As Strings    Thank you for your order!    Thank you for your order!
