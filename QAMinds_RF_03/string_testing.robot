*** Settings ***
Documentation    Ejercicio Validando cadenas de Texto
Library  String
*** Variables ***
${LOWER_STR}  i am doing testing using robot
${UPPER_STR}  QA MINDS ROBOT FRAMEWORK
*** Test Cases ***
Imprime el valor de LOWER_STR
  Log  ${LOWER_STR}
Imprima el valor de UPPER_STR
  Log  ${UPPER_STR}
Verifica si LOWER_STR es cadena de texto
  Should Be String  ${LOWER_STR}
Verifica si UPPER_STR es cadena de texto
  Should Be String  ${LOWER_STR}
Verifica si LOWER_STR esta en minusculas
  Should Be Lowercase  ${LOWER_STR}
Verifica si UPPER_STR está en mayúsculas
  Should Be UpperCase  ${UPPER_STR}


