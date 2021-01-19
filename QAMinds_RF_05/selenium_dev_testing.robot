*** Settings ***
Resource  driver_setup.robot
Test Setup  ChromeDriver Setup
Test Teardown  ChromeDriver Close

*** Test Cases ***
Test Selenium Dev Links
  Go to  https://www.selenium.dev/
  print info page
  Element Should Be Enabled  link:Downloads
  Element should Be Visible  link:Downloads
  Click Link  Downloads
  Capture Page Screenshot  filename=evidencia_dowloads

  Element Should Be Enabled  link:Projects
  Element should Be Visible  link:Projects
  Click Link  Projects
  Capture Page Screenshot  filename=evidencia_projects

  Element Should Be Enabled  link:Documentation
  Element should Be Visible  link:Documentation
  Click Link  Documentation
  Capture Page Screenshot  filename=evidencia_documentation

*** Keywords ***
Print info Page
  ${title} =  Get Title
  ${url} =  Get Location
  log  ${title}
  log  ${url}