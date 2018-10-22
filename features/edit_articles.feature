Feature: Edit articles

    As a publisher
    In order to keep my content accurate
    I would like to be able to edit my articles

    Background: 
        Given I visit the 'landing' page
        And I click 'Edit'

    Scenario: Successfully able to edit article
        When I fill in 'Title' with 'Learning Rails again'
        And I fill in 'Content' with 'Never to late to learn again'
        And I click 'Save Article' button
        Then I should be on "New Article" page
        And I should see "Article was successfully created."
        And I should see "Learning Rails again"
        And I should see "Never to late to learn again"