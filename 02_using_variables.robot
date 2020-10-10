*** Settings ***
Documentation    Our very first Robot Framework example
Library          String

*** Variables ***
${initialphrase}  Hello, World!

*** Test Cases ***
Uppercasing yields the correct phrase
    ${uppercase}=  Convert To Upper Case  ${initialphrase}
    Should Be Equal  ${uppercase}  HELLO, WORLD!

Lowercasing should yield the correct phrase
    ${lowercase}=  Convert To Lower Case  ${initialphrase}
    Should Be Equal  ${lowercase}  hello, world!

