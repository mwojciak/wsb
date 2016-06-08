*** Settings ***
Documentation  Scenarios for changing language option at website wsb.gda.pl
Resource  resource.robot
#Test Teardown  close browser

*** Test Cases ***
Open website
    Given open website wsb.gda.pl
    When opened website
    Then website wsb.gda.pl should be active

Change language to English
    Given choice english language
    When click EN button
    Then changing the language to English

Change languag to Russian
    Given choice russian language
    When click RU button
    Then changing the language to Russian

Change language to Ukrainian
    Given choice ukrainian language
    When click UA button
    Then changing the language to Ukrainian

Return do polish version
    Given return to polish website
    When click PL button
    Then return to polish version
    And close browser


*** Keywords ***

Open website wsb.gda.pl
    On The Website

Opened website
    Title Should Be   Studia Gdańsk | Uczelnia wyższa | Studia stacjonarne i niestacjonarne | Wyższa Szkoła Bankowa w Gdańsku

Website wsb.gda.pl should be active
    Location Should Be  ${website_address}

Choice english language
    Log Location

Click EN button
    Click Element   link=EN

Changing the language to English
    Title Should Be   WSB Universities in Poland

Choice russian language
    Log Location

Click RU button
    Click Element   link=RU

Changing the language to Russian
    Title Should Be   Университеты ВСБ

Choice ukrainian language
    Log Location

Click UA button
    Click Element   link=UA

Changing the language to Ukrainian
    Title Should Be   Университеты ВСБ

Return to polish website
    Log Location

Click PL button
    Click Element   link=PL

Return to polish version
    Title Should Be   Uczelnie wyższe | Studia I, II stopnia i podyplomowe | Stacjonarne i niestacjonarne | Wyższe Szkoły Bankowe

Close Browser
    Close Browser