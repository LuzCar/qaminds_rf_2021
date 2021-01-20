*** Settings ***
Resource  driver_setup.robot
Test Setup  ChromeDriver Setup
Test Teardown  ChromeDriver Close

*** Test Cases ***
Test PHTRAVLES Page
  Go To  https://www.phptravels.net/

  Click Element  id:s2id_autogen16
  Wait Until Element Is Visible  id:select2-drop
  Click Element  id:select2-drop
  Input text  //input[@type='search' and @name ='dest']  London
  Click Element  id:select2-drop
  Press Keys  //input[@type='search' and @name ='dest']  TAB

  Input Text  id:checkin  25/01/2021
  Input Text  id:checkout  29/01/2021

  Click Element  //div[@class='col o2']//button[@class='btn btn-white bootstrap-touchspin-up ']
  Capture Page Screenshot  filename=evidencia_booking_form









*** Keywords ***
Provided precondition
    Setup system under test