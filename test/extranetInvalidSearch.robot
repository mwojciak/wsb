*** Settings ***
Documentation    Searching Extranet for various invalid results
Resource  resource.robot
Test Setup  Logged to Extranet

*** Test Cases ***
Invalid Search
    [Documentation]  Test checks searching for pseudo random text via Extranet browser
    [Tags]    Smoke
    Clear Element Text  ${search_box_input}
    Input Text  ${search_box_input}  q2w3e4r5
    Click Element  xpath=//*[@id="search-action"]
    Element Should Contain  ${search_result}  Nie znaleziono wyników zawierających słowa kluczowe: q2w3e4r5.