Feature: Create articles

    As a publisher
    In order to add relevant content to my news service
    I would like to be able to create articles

    Background:
        Given I visit the 'landing' page
        When I click 'New Article' link

    Scenario: Successfully create an article (happy path)
        When I fill in 'Title' with 'Learning Rails 5'
        And I fill in 'Content' with 'Excited about learning a new framework'
        And I click 'Create Article' button
        Then I should be on "New Article" page
        And I should see "Article was successfully created."
        And I should see "Learning Rails 5"
        And I should see "Excited about learning a new framework"

    Scenario: Successfully create an article (sad path)
        When I fill in 'Title' with ''
        And I fill in 'Content' with 'Excited about learning a new framework'
        And I click 'Create Article' button
        Then I should be on "New Article" page
        And I should see 'Article was not created, try again.'
