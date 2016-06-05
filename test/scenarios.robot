*** Settings ***
Documentation    Scenarios for tests website wsb.pl
Resource        resource.robot

*** Test Cases ***
Open website
    Given open website wsb.pl
    When open website
    Then website wsb.gda.pl should be active

Change languages to English
    Given choice english language
    When click EN button
    Then changing the language to English

Change languages to Russian
    Given choice russian language
    When click RU button
    Then changing the language to Russian

Change languages to Ukrainian
    Given choice ukrainian language
    When click UA button
    Then changing the language to Ukrainian

Return to polish version
    Given return to polish website
    When click PL button
    Then return to polish version

Close cookies information
    Given see cookies information
    When I click 'Zamknij'
    Then information about cookies is closed

Select city
    Given select city from list
    When I click the dropdown
    Then I select city from list
    And I see website for this city


Keyword search
    Given searching some keyword
    When I click 'Formularz wyszukiwania'
    And I write some keyword
    And I click enter
    Then I see searching result for this keyword

Select postgraduate courses
    Given See postgraduate courses
    When I click "Studia podyplomowe"
    And I click "Kierunki"
    Then I see webpage about postgraduate courses
    And I can choice some course
    And I see webpage about this course



*** Keywords ***

Open website wsb.pl
    Open Browser    ${website_address}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
Open website
    Title Should Be   Uczelnie wyższe | Studia I, II stopnia i podyplomowe | Stacjonarne i niestacjonarne | Wyższe Szkoły Bankowe
Website wsb.gda.pl should be active
    Location Should Be   ${website_address}

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

See cookies information
    Log Location

I click 'Zamknij'
    Click Element  id=accept

Information about cookies is closed
    Log Location

Searching some keyword
    Log Location

I click 'Formularz wyszukiwania'
    Click Element   id=edit-search-block-form--2

I write some keyword
    Input Text   id=edit-search-block-form--2   text=${fraza}

I click enter
    Press Key   id=edit-submit   key=\\13

I see searching result for this keyword
    Element Text Should Be   css=#block-system-main .content h3   expected=Szukana fraza: ${fraza}

Select city from list
    Log Location

I click the dropdown
    Click Element   id=miasto-wsb

I select city from list
   Select From List    id=miasto-wsb

I see website for this city
    Title Should Be   Studia Bydgoszcz | Uczelnia wyższa | Studia stacjonarne i niestacjonarne | Wyższa Szkoła Bankowa w Bydgoszczy

See postgraduate courses
    Click Element   css=a#logo img

I click "Studia podyplomowe"
    Click Element   css=#block-menu-menu-wybierz-studia-w-wsb a[title="Studia podyplomowe"]

I click "Kierunki"
    Click Element   link=Kierunki

Then I see webpage about postgraduate courses
    Title Should Be   Znajdź studia podyplomowe na WSB | Bydgoszcz - WSB.pl

I can choice some course
    Click Element   link=Neurodydaktyka

I see webpage about this course
    Title Should Be     Neurodydaktyka | Bydgoszcz - WSB.pl


