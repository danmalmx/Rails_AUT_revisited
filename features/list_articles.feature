Feature: List articles on the landing page

   As a a visitor, 
   When I visit the landing page of the application
   I would like to see a list of articles

    Scenario: View list of articles on the landing page
        Given the following articles exist
            | title                 | content                                  |
            | A breaking news item  | Some really breaking action              |
            | Learn Rails 5         | Excited about learning a new freamework  |
        When I visit the site
        Then I should see "A breaking news item"
        And I should see "Some really breaking action"
        And I should see "Learn Rails 5"
        And I should see "Excited about learning a new freamework"