Feature: Hello World
  In order to make sure cucumber is running
  As a web browser
  I want my test to check for Hello World

  Background:
    Given the following article exists:
    | title      | body    |
    | Some title | sombody |
    And the article "Some title" was written by "user@example.com"

  Scenario: Viewing the page
    Given I am on the homepage
    Then I should see "Some title"
    And I should not see "somebody"
    And I should not see "Hello World"
    
    When I follow "Some title"
    Then I should see "sombody"

  Scenario: Articles with authors
    When I go to the home page
    Then I should see "user@example.com" within "article .author"
