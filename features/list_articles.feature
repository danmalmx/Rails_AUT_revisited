Feature: List articles on the landing page

   As a avisitor, 
   When I visit the landing page of the application
   I would like to see a list of articles

   Scenario: View list of articles on the landing page
    Given the following articles exist
        | title                 | content                           |
        | A breaking news item  | Some really breaking action         |
        | Learn Rails 5         | Build Awesome rails applications  |
    When I visit the site
    Then I should see "A breaking news item"
    And I should see "Some really breaking action"
    And I should see "Learn Rails 5"
    And I should see "Build Awesome rails applications"