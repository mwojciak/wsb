*** Settings ***
Documentation    Suite description

*** Test Cases ***
Test title
    [Tags]    DEBUG
    Provided precondition
    When action
    Then check expectations
    Close Browser

*** Keywords ***
Provided precondition
    Setup system under test