*** Settings ***
Documentation    Suite description
Library          String

*** Test Cases ***
Check that random string has only ABCX
    ${result}=  Generate Random String And Replace D And F
    Should Match Regexp  ${result}  ^(A|B|C|X){8}$

*** Keywords ***
Generate Random String And Replace D And F
    ${random_string}=  Generate Random String  8  ABCDF
    ${no_ds}=  Replace String  ${random_string}  D  X
    ${no_ds_no_fs}=  Replace String  ${no_ds}  F  X
    [Return]  ${no_ds_no_fs}