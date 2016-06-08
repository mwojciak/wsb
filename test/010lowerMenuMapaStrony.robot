*** Settings ***
Documentation  Test checks footer menu
Resource  resource.robot


*** Test Cases ***
Lower Menu Test
    [Documentation]  checking Mapa Strony in footer menu
    [Tags]  Smoke
    Open Browser  ${website_address_gdansk}    ${BROWSER}   remote_url=${RemoteURL}   desired_capabilities=browser:${BROWSER},os:${OS},browserstack.debug:true
    Maximize Browser Window
    Set Selenium Speed  ${DELAY}
    Click Element  xpath=//*[@id="block-menu-menu-stopka"]/div/ul/li[7]/a
    Page Should Contain  Mapa strony
    Close Browser
