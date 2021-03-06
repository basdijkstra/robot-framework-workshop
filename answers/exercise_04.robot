*** Settings ***
Documentation    An example of using Robot Framework - Requests
Library          RequestsLibrary
Library          Collections

*** Test Cases ***
Check that a valid HTTP call yields status 200 and the expected todo title
    Create Session  zip  http://api.zippopotam.us
    ${response}=    Get Request  zip  /us/90210
    Status Should Be  200  ${response}
    ${country}=  Get From Dictionary  ${response.json()}  country
    Should Be Equal  ${country}  United States
