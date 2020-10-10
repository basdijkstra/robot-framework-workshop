*** Settings ***
Documentation    Our very first Robot Framework example
Library          String
Test Setup       Comment  We're starting the test now...
Test Teardown    Comment  Test execution has ended!


*** Test Cases ***
Randomly generated binary string has the correct format
    ${random_binary}=  Generate Random String  8  01
    Should Match Regexp  ${random_binary}  ^[0-1]{8}$

Randomly generated string has the correct length
    ${random_string}=  Generate Random String  10
    Length Should Be  ${random_string}  10

