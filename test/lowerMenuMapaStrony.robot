*** Settings ***
Documentation    Smoke Suite Test
Resource  resource.robot
Test Setup  On The Website

*** Test Cases ***
Lower Menu Features
    [Documentation]  Test checks choosing Mapa Strony from lower menu
    [Tags]  Smoke

*** Keywords ***
Provided precondition
    Setup system under test