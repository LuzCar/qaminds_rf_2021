*** Settings ***
Resource  driver_setup.robot
Test Setup  ChromeDriver Setup
Test Teardown  ChromeDriver Close


*** Test Cases ***
Fill Inquiry form
  Go to  https://formsmarts.com/html-form-example
  Select Frame  class:fs_embed
  Input Text  id:u_YGD_4607  LuzMa
  Input Text  id:u_YGD_338354  Carrillo
  Input Text  id:u_YGD_4608  lcarrillofraire@gmail.com
  Select From List By Label  id:u_YGD_338367  Support Inquiry
  Input Text  id:u_YGD_4609  TEST
  Click Element  name:submit
  Capture Page Screenshot  filename=evidencia_inquiry_form
