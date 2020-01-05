Feature: User can edit an article

  As a publisher
  In order to keep my content accurate
  I would like to be able to edit my articles

  Background:
    Given the following users exist
      | email         | password |
      | user@mail.com | password |

    Given the following articles exist
      | title                | content                          |
      | A breaking news item | Some breaking action             |

    And I am on the index page

  Scenario: User can edit the content of an article
    When I click "A breaking news item"
    And I click "Edit article"
    And I fill in "Title" with "A non-breaking news item"
    And I fill in "Content" with "Some action that is not breaking"
    And I click "Save article"
    Then I should see "Article successfully updated"
    And I should be on "A non-breaking news item" page
    And I should see "Some action that is not breaking"