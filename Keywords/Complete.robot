*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/variables.robot
Resource    ../Resources/locators.robot

*** Keywords ***
Verify the order confirmation
    Sleep    3s
    Wait Until Element Is Visible  ${confirmation_message}
    ${message}=    Get Text    ${confirmation_message}
    Should Be Equal As Strings    ${message}    ${expected_message}
