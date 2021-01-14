*** Settings ***
Documentation    Interactuar con Variables

*** Variables ***
${PROJECT_NAME}  QA MINDS
@{TECNOLOGHIES}  RobotFramework  Selenium  Python
&{MODULES}  module1=Introduction  module2=Setup


*** Test Cases ***
Test Variables Types
  #Imprime el valor de la variable PROJECT_NAME y su primer carácter
  Log  Project Name is: ${PROJECT_NAME} primer caracter is ${PROJECT_NAME}[0]
  #Imprime los valores de los dos últimos elementos de la variable de tipo lista TECHNOLOGIES
  Log  ${TECNOLOGHIES}[1]
  Log  ${TECNOLOGHIES}[2]
  LOG  ${TECNOLOGHIES}[1:]
  #Imprime el valor correspondiente a la llave module1 en el diccionario MODULES
  log  ${MODULES}[module1]