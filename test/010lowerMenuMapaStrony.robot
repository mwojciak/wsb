*** Settings ***
Documentation  Test checks footer menu
Resource  resource.robot
Test Setup  On The Website Gdansk

*** Test Cases ***
Lower Menu Test
    [Documentation]  checking Mapa Strony in footer menu
    [Tags]  Smoke
    Maximize Browser Window
    Set Selenium Speed  ${DELAY}
    Click Element  xpath=//*[@id="block-menu-menu-stopka"]/div/ul/li[7]/a
    Page Should Contain  Mapa strony
    Close Browser
