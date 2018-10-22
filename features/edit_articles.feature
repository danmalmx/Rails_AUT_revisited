Feature: Edit articles

    As a publisher
    In order to keep my content accurate
    I would like to be able to edit my articles

    Background: 
        Given the following articles exist
            | title                 | content                                  |
            | Learn Rails 5         | Excited about learning a new framework   |
        Given I visit the 'landing' page
        When I click 'Edit' button
        And I visit the 'edit' page


    Scenario: Successfully able to edit article
        And I fill in 'Title' with 'Learning Rails again'
        And I fill in 'Content' with 'Never to late to learn again'
        And I click 'Save Article' button
        Then I should be on "New Article" page
        And I should see "Article was successfully updated."