*** Settings ***
Resource  driver_setup.robot
Test Setup  ChromeDriver Setup
Test Teardown  ChromeDriver Close
*** Test Cases ***
Open Google
  Go to  https://www.google.com.mx/
Open Youtube
  Go to  https://www.youtube.com/

