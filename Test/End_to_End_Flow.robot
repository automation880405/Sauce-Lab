*** Settings ***
Resource    ../Keywords/Inventory.robot
Resource    ../Keywords/login.robot
Resource    ../Resources/variables.robot
Resource    ../Keywords/CartPage.robot
Resource    ../Keywords/checkout.robot
Resource    ../Keywords/Complete.robot
Test Teardown   Close Browser
#Test Template    Login Test Template

*** Test Cases ***
Validate Multiple User Login
    validate different User login

Validate end to end flow of application
    [Tags]      regression
    Open SauceDemo Login Page
    Login With Valid Credentials    ${user_id}    ${PASSWORD}
    List of products and click on each Element
    Go To cart and check
    Click on Checkout button
    Fill the user name and address
    click on Finish button
    Verify the order confirmation
