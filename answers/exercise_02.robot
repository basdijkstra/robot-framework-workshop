*** Settings ***
Documentation    Suite description
Library          String
Test Setup       Comment  We're starting the test now...
Test Teardown    Comment  The test has ended.

*** Variables ***
${hello_world}  Hello, World!

*** Test Cases ***
Convert to uppercase
    ${uppercase}=  Convert To Upper Case  ${hello_world}
    Should Be Equal  ${uppercase}  HELLO, WORLD!

Convert to lowercase
   ${lowercase}=  Convert To Lower Case  ${hello_world}
   Should Be Equal  ${lowercase}  hello, world!

