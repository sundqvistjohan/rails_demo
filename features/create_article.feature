Feature: User can create articles
    As a publisher
    In order to add relevant content to my news service
    I would like to be able to create articles

    Background:
        Given the following users exist
            | email         | password |
            | user@mail.com | password |
        And I am on the index page

    Scenario: User can successfully create and article [Happy Path]
        Given I am logged in as "user@mail.com"
        And I am on the index page
        When I click "New Article"
        And I fill in "Title" with "Learning Rails 6"
        And I fill in "Content" with "Excited about learning a new framework"
        And I click "Create Article"
        Then I should be on "Learning Rails 6" page
        And I should see "Article was successfully created."
        And I should see "Learning Rails 6"
        And I should see "Excited about learning a new framework"

    Scenario: Visitor can not create an article [Sad path]
        Then I should not see "New Article"
