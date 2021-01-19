*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

*** Keywords ***
ChromeDriver Setup
  ${parent_path}  ${dir} =  Split Path  ${CURDIR}
  Create Webdriver  Chrome  executable_path=${parent_path}\\drivers\\chromedriver.exe
  Maximize Browser Window
  Set Selenium Timeout  5
  Set Selenium Speed  2 seconds


ChromeDriver Close
  Close Browser