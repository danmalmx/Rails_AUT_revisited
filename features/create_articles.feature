Feature: Create articles

    As a publisher
    In order to add relevant content to my news service
    I would like to be able to create articles

    Background:
        Given I visit the 'landing' page
        When I click 'New Article' link

    Scenario: Successfully create an article (happy path)
        When I fill in 'Title' with 'Learning Rails 5'
        And I fill in 'Content' with 'Excited about learning a new freamework'
        And I click 'Create Article' button