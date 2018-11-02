Feature: Edit articles

    As a publisher
    In order to keep my content accurate
    I would like to be able to edit my articles

    Background: 
        Given the following articles exist
            | title         | content                                |
            | Learn Rails 5 | Excited about learning a new framework |
        And I visit the 'landing' page

    Scenario: Successfully able to edit article
        When I see the "Excited about learning a new framework" content 
        And I click "Edit"
        And I fill in 'Title' with 'Learning Rails again'
        And I fill in 'Content' with 'Never to late to learn again'
        And I click 'Save Article'
        Then I should be on "landing" page
        And I should see "Article was successfully updated."