*** Settings ***
Documentation    Suite description

*** Test Cases ***

Select city
    [Tags]  Smoke
    Given select city from list
    When I click the dropdown
    Then I see list of the cities
    And I select city from list
    And I see website for this city

*** Keywords ***
Provided precondition
    Setup system under test