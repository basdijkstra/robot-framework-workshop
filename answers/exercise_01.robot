*** Settings ***
Documentation    Exercise 01
Library          String

*** Test Cases ***
Convert to upper case
    ${uppercase}=  Convert To Upper Case  banana
    Should Be Equal  ${uppercase}  BANANA

Convert to title case
    ${titlecase}=  Convert To Title Case  hello, world!
    Should Be Equal  ${titlecase}  Hello, World!
