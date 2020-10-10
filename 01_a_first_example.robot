*** Settings ***
Documentation    Our very first Robot Framework example
Library          String

*** Test Cases ***
A first Robot Framework test
    ${lowercase}=  Convert To Lower Case  BANANA
    Should Be Equal  ${lowercase}  banana


