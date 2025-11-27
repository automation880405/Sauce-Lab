*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Chrome In Incognito
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver

    # Incognito mode
    Call Method    ${options}    add_argument    --incognito

    # Disable save-password popup only
    ${prefs}=    Create Dictionary    credentials_enable_service=${False}    profile.password_manager_enabled=${False}
    Call Method    ${options}    add_experimental_option    prefs    ${prefs}

    Create WebDriver    Chrome    options=${options}
