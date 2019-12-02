Feature: List articles on landing page
    As a visitor
    When I visit the applications landing page
    I would like to see a list of articles

    Scenario: Viewing list of articles on the applications landing page
        When I am on the landing page
        Then I should see "A breaking news item"
        And I should see "Some breaking action"
    
    

    