*** Settings ***
Resource  driver_setup.robot
Test Setup  ChromeDriver Setup
Test Teardown  ChromeDriver Close

*** Test Cases ***
Navigate Internet
  Go to  https://www.google.com/
  Print infor Page
  Go to  https://www.mlb.com/es
  Print infor Page
  Go to  https://www.nytimes.com/es/
  Print infor Page
  Reload Page
  Go Back
  Go Back
  Print infor Page

*** Keywords ***
Print infor Page
  ${title} =  Get Title
  ${url} =  Get Location
  log  ${title}
  log  ${url}