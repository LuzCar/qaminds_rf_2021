*** Settings ***
Resource  driver_setup.robot

*** Variables ***
${USER_LOC}  id:userName
${PASS_LOC}  id:password
${LOGIN_LOC}  id:login

*** Keywords ***
Login DemoQA
  [Arguments]  ${user}  ${password}  ${image_name}
  Go To  https://demoqa.com/login
  Wait Until Element Is Enabled  ${USER_LOC}
  Wait Until Element Is Enabled  ${PASS_LOC}
  Wait Until Element Is Enabled  ${LOGIN_LOC}
  Input Text  ${USER_LOC}   ${user}
  Input Password  ${PASS_LOC}  ${password}
  Click Button  ${LOGIN_LOC}
  Capture Page Screenshot  ${image_name}
