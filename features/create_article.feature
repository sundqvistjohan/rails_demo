Feature: User can create articles
    As a publisher
    In order to add relevant content to my news service
    I would like to be able to create articles

    Background: 
        Given I am on the index page
        And I click "New Article"

    Scenario: Successfully creates and article [Happy Path]
        When I fill in "Title" with "Learning Rails 6"
        And I fill in "Content" with "Excited about learning a new framework"
        And I click "Create Article"
        Then I should be on "Learning Rails 6" page
        And I should see "Article was successfully created."
        And I should see "Learning Rails 6"
        And I should see "Excited about learning a new framework"

