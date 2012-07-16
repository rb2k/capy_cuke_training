Feature: Example
  
  Scenario: As a concerned internet citizen, I want to know if acquia.com is still up
    Given I am visiting the homepage
    Then I should see a title containing the word "Acquia"
    And I should see a title containing the word "Drupal"

  Scenario: As somebody who cares, I want to make sure that the search box is still working
    Given I am visiting the homepage
    And I search for 'Dries'
    Then I should see a lot of search results