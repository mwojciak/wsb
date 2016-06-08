*** Settings ***
Documentation    Checking hover over upper menu
Resource  resource.robot

*** Test Cases ***
Choosing AKTUALNOŚCI from KANDYDACI menu
    [Documentation]  Test checks hovering over upper menu and selecting its element
    [Tags]    Smoke
    Open Browser  ${website_address}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed  ${DELAY}
    Mouse Over  ${upper_menu_element_parent}
    Click Element  ${upper_menu_element_child}
    Page Should Contain  Aktualności