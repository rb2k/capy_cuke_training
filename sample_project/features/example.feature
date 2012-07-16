Feature: Example
  
  Scenario: As a concerned internet citizen, I want to know if acquia.com is still up
    Given I am visiting the homepage
    Then I should see a title containing the word "Acquia"
    And I should see a title containing the word "Drupal"
    And I should not see a title containing the word "Jive"

  Scenario: As somebody visiting aquia.com, I want to make sure that the search box is still working
    Given I am visiting the homepage
    And I search for 'Dries'
    Then I should see a lot of search results

  Scenario: As somebody visiting aquia.com, I want to make sure that there is no profanity to be found
    Given I am visiting the homepage
    And I search for 'poop'
    Then I should see no search results

  Scenario: As somebody visiting aquia.com, I would love to have word suggestions for typos when searching 
    Given I am visiting the homepage
    And I search for 'beefcake'
    Then I should see the text "Did you mean"
    And I should see the text "briefcases"