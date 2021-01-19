*** Settings ***
Resource  driver_setup.robot
Test Setup  ChromeDriver Setup
Test Teardown  ChromeDriver Close

*** Test Cases ***
Test case demoqa
  Go to  https://demoqa.com/login
  Wait Until Element Is Visible  id:userName
  Wait Until Element Is Visible  id:password
  Input Text  id:userName  Luz Maria
  Input Text  id:password  Carrillo
  Click Button  id:login





*** Keywords ***
Provided precondition
    Setup system under test