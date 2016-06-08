*** Settings ***
Documentation  This is a part of smoke test suite
...            covering basic functionality
Resource  resource.robot
Test Teardown  close browser
Test Setup  On The Website

*** Test Cases ***
User logs in to Extranet
    [Documentation]  Test checks loging with valid user to the Extranet
    [Tags]  Smoke
    Maximize Browser Window
    Click Link  ${loging_to_ExNet}
    Input Text  ${login_input}  ${valid_pt_user}
    Input Password  ${pwd_input}  ${valid_pt_password}
    Click Element  xpath=//*[@id="login"]/div[3]/input[3]
    Page Should Contain  EXTRANET
    #loging out
    Click Element  xpath=//*[@id="_145_userAvatar"]/span/span/a
    Close Browser

