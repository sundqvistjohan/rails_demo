Feature: User can comment on an article
  As a User
  In order to voice my opinions
  I would like to be able to comment on an article

  Background:
    Given the following articles exist
      | title                | content                          |
      | A breaking news item | Some breaking action             |
      | Learn Rails 5        | Build awesome rails applications |

    And I am on the index page

  Scenario: User can comment successfully
    When I click "A breaking news item"
    And I fill in "Comment" with "This is real news!"
    And I click "Submit comment"
    Then I should see "Comment posted"
    And I should be on "A breaking news item" page
    And I should see "This is real news!"

  Scenario: User can not leave empty comment
    When I click "A breaking news item"
    And I fill in "Comment" with ""
    And I click "Submit comment"
    Then I should see "Something went wrong"
    And I should be on "A breaking news item" page