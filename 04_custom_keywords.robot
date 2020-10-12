*** Settings ***
Documentation    Suite description
Library          String

*** Test Cases ***
Use a custom defined keyword
    ${random_no_fours}=  Generate Random Numeric String And Replace Fours With X
    Should Not Contain  ${random_no_fours}  4

*** Keywords ***
Generate Random Numeric String And Replace Fours With X
    ${random_numeric_string}=  Generate Random String  16  [NUMBERS]
    ${new_string}=  Replace String  ${random_numeric_string}  4  X
    [Return]  ${new_string}

