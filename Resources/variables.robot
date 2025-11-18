*** Variables ***
${URL}      https://www.saucedemo.com
${Broswer}  chrome
${user_id}  standard_user
${password}  secret_sauce
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
