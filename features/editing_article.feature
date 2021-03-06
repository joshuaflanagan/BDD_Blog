Feature: Editing an existing article
  In order to update existing content and avoid looking like a dipwad
  As a blog owner
  I want to edit an article
  
  Scenario: Editing existing article
    Given the following article exists:
        | title           | body |
        | Existing article| The is really interesting |
        And the article "Existing article" was written by "user@example.com"
        And I am on the home page
        And I log in as "user@example.com"
        And I follow "Existing article"
        And I follow "Edit"
        And I fill in "Title" with "Better title"
        And I press "Submit"
        
    Then I should be on the home page
    And I should see "Article updated"
    And I should see "Better title"
  
