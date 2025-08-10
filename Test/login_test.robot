*** Settings ***
Resource    ../Keywords/login.robot

** Test Cases ***
Valid Login Test
    Open SauceDemo Login Page
   # Login With Valid Credentials
    Verify Successful Login
    Close Browser Session


