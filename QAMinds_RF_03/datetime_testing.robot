*** Settings ***
Documentation    Actividad - Guardar Retorno de variable
Library  DateTime

*** Variables ***
${my_date}
*** Test Cases ***
convertir fecha
  ${date} =  Convert Date  20210113 12:05:03.111
  log  ${date}
  ${date} =  Add Time To Date  ${date}  7 days
  log  ${date}
