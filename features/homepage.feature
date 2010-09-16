Feature: Hello World
  In order to make sure cucumber is running
  As a web browser
  I want my test to check for Hello World

  Scenario: Viewing the page
    Given the following article exists:
    | title      | body    |
    | Some title | sombody |
    
#    Given the following user exists:
#    | email | password |
#    | test@test.com | password|
#    And I am on the homepage
#    
#    Given I am logged in as "tim@tim.com"
    
    
    Given I am on the homepage
    Then I should see "Some title"
    And I should not see "somebody"
    And I should not see "Hello World"
    
    When I follow "Some title"
    Then I should see "sombody"
