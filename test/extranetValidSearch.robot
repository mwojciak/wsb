*** Settings ***
Documentation    Searching Extranet for various valid results
Resource  resource.robot
Test Setup  Logged to Extranet

*** Test Cases ***
Valid Search
    [Documentation]  Test checks searching for pseudo random text via Extranet browser
    [Tags]    Smoke
    Clear Element Text  ${search_box_input}
    Input Text  ${search_box_input}  wsb
    Click Element  //*[@id="search-action"]
    Element Should Contain  ${search_result}  wsb