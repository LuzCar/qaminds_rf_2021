*** Settings ***
Resource  driver_setup.robot
Test Setup  ChromeDriver Setup
Test Teardown  ChromeDriver Close

*** Test Cases ***
Test hotel form
  Go to  https://formsmarts.com/form/axi?mode=h5
  Input Text  id:u_KqI_60857  LUZ MARIA
  Input Text  id:u_KqI_60858  CARRILLO
  Input Text  id:u_KqI_60859  lcarrillofraire@gmail.com
  Input Text  id:u_KqI_60860  Monterrey Nl
  Select From List By Label  id:u_KqI_60871  Mexico
  Input Text  id:u_KqI_60861  16/01/2021
  Click Element  id:u_KqI_60866_0
  Input Text  id:u_KqI_60870  2
  Click Element   name:submit
  Capture Page Screenshot  filename=evidencia_hotel_form

