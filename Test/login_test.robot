*** Settings ***

Resource    ../Keywords/login.robot
Resource    ../Resources/variables.robot
#Test Template    Login Test Template

*** Test Cases ***
Valid Multiple User Login
    FOR    ${user}    IN    @{USERS}
        Open SauceDemo Login Page
        Login With Valid Credentials    ${user}    ${PASSWORD}
        Verify Successful Login
        Close Browser Session
    END

