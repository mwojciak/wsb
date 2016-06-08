*** Settings ***
Documentation   Select course from list
Resource  resource.robot

*** Test Cases ***
Select postgraduate courses
    Given See postgraduate courses
    When I click "Studia podyplomowe"
    And I click "Kierunki"
    Then I see webpage about postgraduate courses
    And I can choice some course
    And I see webpage about this course
    And close this browser

*** Keywords ***
See postgraduate courses
    On The Website

I click "Studia podyplomowe"
    Click Element   css=#block-menu-menu-wybierz-studia-w-wsb a[href="/kandydaci/studia-podyplomowe"]

I click "Kierunki"
    Click Element   link=Kierunki

I see webpage about postgraduate courses
    Title Should Be   Znajdź studia podyplomowe na WSB | Wyższe Szkoły Bankowe | WSB.pl

I can choice some course
    Click Element   link=Surdopedagogika

I see webpage about this course
    Element Text Should Be  css=.kierunek-header > h2  Surdopedagogika

Close this browser
    Close Browser