*** Settings ***
Documentation    Select city from dropdown list and go to the webpage this city
Resource  resource.robot

*** Test Cases ***

Select city
    Given select city from list
    When I click the dropdown
    Then I select city from list
    And I see website for this city
    And close this browser

*** Keywords ***
Select city from list
    On The Website

I click the dropdown
    Click Element   ID=miasto-wsb

I select city from list
    Click Element   xpath=//div[@id('miasto-wsb')] /x:option[4]

I see website for this city
    Title Should Be   Studia Gdańsk | Uczelnia wyższa | Studia stacjonarne i niestacjonarne | Wyższa Szkoła Bankowa w Gdańsku

Close this browser
    Close Browser

