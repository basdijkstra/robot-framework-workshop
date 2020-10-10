*** Settings ***
Documentation    Suite description
Library          String

*** Test Cases ***
Use a custom defined keyword
    Generate Random Numeric String And Replace Fours With X

*** Keywords ***
Generate Random Numeric String And Replace Fours With X
    ${random_numeric_string}=  Generate Random String  16  [NUMBERS]
    ${new_string}=  Replace String  ${random_numeric_string}  4  X
    Log To Console  ${new_string}

