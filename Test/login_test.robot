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
    FOR    ${user}    IN    @{USERS}
        Open SauceDemo Login Page
        Login With Valid Credentials    ${user}    ${PASSWORD}
        Verify Successful Login
        Close Browser Session
    END
End to end flow of Sauce Lab
    Open SauceDemo Login Page
    Login With Valid Credentials    ${user_id}    ${PASSWORD}
    List of products and click on each Element
    Go To cart and check
    Click on Checkout button
    Fill the user name and address
    sleep    2s
    click on Finish button
    sleep    2s
    Verify the order confirmation
    sleep    2s