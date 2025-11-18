*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Fill the user name and address
    Wait Until Element Is Visible    id:first-name
    Input Text    first-name    Avinash
    Wait Until Element Is Visible   id:last-name
    Input Text    id:last-name    Kumar
    Wait Until Element Is Visible    id:postal-code
    Input Text    id:postal-code    560037
    Wait Until Element Is Visible    id:continue
    Click Button    id:continue
click on Finish button
    Wait Until Element Is Visible    id:finish
    Click Button    id:finish
