*** Settings ***
Resource  login_template.robot
Test Setup  ChromeDriver Setup
Test Teardown  ChromeDriver Close
Test Template  Login DemoQA

*** Test Cases ***
Valid User and Password  Luz maria  Carrillo  valid.png
Invalid User  INVALID  Carrillo  invalid_user.png
Invalid Password  Luz Maria   INVALID  invaliad_password.png
