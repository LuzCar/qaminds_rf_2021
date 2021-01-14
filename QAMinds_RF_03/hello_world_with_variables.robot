*** Settings ***
Library  String
Documentation  Examples using Test Suite Docomentation

*** Variables ***
${MESSAGE}  QA Minds
*** Test Case ***
Hello World with Variables
  [Documentation]  Example Test Documentation
  Log  ${MESSAGE}
simple hellow world
  Log   Hellow Wordl!


