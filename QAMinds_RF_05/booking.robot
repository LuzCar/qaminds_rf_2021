*** Settings ***
Resource  driver_setup.robot
Test Setup  ChromeDriver Setup
Test Teardown  ChromeDriver Close

*** Test Cases ***
Test PHTRAVLES Page
  Go To  https://www.phptravels.net/
  Input Text  id:checkin  20/01/2021
  Input Text  id:checkout  25/01/2021
  Click Element  text:+



*** Keywords ***
Provided precondition
    Setup system under test