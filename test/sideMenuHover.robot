*** Settings ***
Documentation    Checking side menu for recruitment info
Resource  resource.robot
Test Setup  On The Website

*** Test Cases ***
Redirecting to Contact form via Side Menu
    [Documentation]  Test checks hovering over side menu and redirecting to Recruitment form
    [Tags]  Smoke
    Mouse Over  ${side_menu_element_parent}
    Focus  xpath=.//*[@id='contactSlider']
    Click Element  ${side_menu_element_child}
    Page Should Contain  Rekrutacja online
