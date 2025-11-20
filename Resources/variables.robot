*** Variables ***
${URL}      https://www.saucedemo.com
${Broswer}  Firefox
${USER_ID}  performance_glitch_user
${password}  secret_sauce
${Edge}  C:Path
@{USERS}
...    standard_user
...    visual_user
...    problem_user
...    performance_glitch_user
...    error_user

${PASSWORD}    secret_sauce
@{CHROME_ARGS}
...    --disable-features=PasswordCheck,SafetyCheck,PasswordLeakDetection
...    --disable-popup-blocking
...    --disable-notifications
...    --disable-blink-features=AutomationControlled


#checkout_variable
${input_first_name}  Ravi
${input_Last_name}  Kumar
${input_postal_code}    560037
${finish_button}    finish

#Complete_Page
${expected_message}     Thank you for your order!