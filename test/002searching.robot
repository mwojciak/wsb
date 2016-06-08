*** Settings ***
Documentation    Searching some keywords
Resource  resource.robot

*** Test Cases ***
Keyword search
    Given searching some keyword
    When I click 'Formularz wyszukiwania'
    And I write some keyword
    And I click enter
    Then I see searching result for this keyword
    And close this browser

*** Keywords ***
Searching some keyword
    On The Website

I click 'Formularz wyszukiwania'
    Click Element   id=edit-search-block-form--2

I write some keyword
    Input Text   id=edit-search-block-form--2   text=${fraza}

I click enter
    Press Key   id=edit-submit   key=\\13

I see searching result for this keyword
   Element Text Should Be   css=#block-system-main .content h3   expected=Szukana fraza: ${fraza}

Close this browser
    Close Browser