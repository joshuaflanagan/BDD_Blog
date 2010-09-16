Feature: Posting a new article
    In order to put new advertising-generating content on the web
    As a blog owner
    I want to post new articles
    
    Scenario: Posting an article
     Given I am on the home page
     When I follow "New Post"
     Then I should be on the new article page
      And I should see "New Article"
      
     When I fill in "Title" with "Some title"
      And I fill in "Body" with "logem ipsum solatem dolor meso"
      And I press "Submit"
      
     Then I should be on the home page
        And I should see "New article created"
        And I should see "Some title"
        And I should see awesome rounded corners
        And I should see a list of articles
        #And I debug
    
