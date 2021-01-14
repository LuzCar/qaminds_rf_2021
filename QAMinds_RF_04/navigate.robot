*** Settings ***
Resource  driver_setup.robot
Test Setup  ChromeDriver Setup
Test Teardown  ChromeDriver Close

*** Test Cases ***
navigate
  Go to  https://www.google.com.mx/
  Go to  https://www.youtube.com/
  Go Back
  ${title_page} =  Get Title
  Log  ${title_page}