*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/variables.robot
Resource    ../Resources/locators.robot

*** Keywords ***
Fill the user name and address
    Wait Until Element Is Visible    id:${first_name}
    Input Text    id:${first_name}    ${input_first_name}
    Wait Until Element Is Visible   id:${Last_name}
    Input Text    id:${Last_name}    ${input_Last_name}
    Wait Until Element Is Visible    id:${postal_code}
    Input Text    id:${postal_code}    ${input_postal_code}
    Wait Until Element Is Visible    id:${continue_button}
    Click Button    id:${continue_button}
    sleep    3s
click on Finish button
    Wait Until Element Is Visible    id:${finish_button}
    Click Button    id:${finish_button}
