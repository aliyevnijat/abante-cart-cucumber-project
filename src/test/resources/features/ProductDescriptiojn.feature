#Author: Ekaterina


Feature: Product Description
  
  Scenario: Product name and product price on the Product Description page are the same as on the Multiple Products page
    Given I am logged in and on the Home Page
    When I go to tab "Fragrance"
    And I choose option "Women"
    Then I'm on page with "Women" products
    And I see the product with name "Beauty Eau De Parfum" and price "$50"
    When I click on the product with name "Beauty Eau De Parfum" and price "$50"
    Then I see page with the same product name  "Beauty Eau De Parfum" and price "$50"

  Scenario Outline: Product name and product price on the Product Description page are the same as on the Multiple Products page
    Given I want to write a step with <name>
    When I check for the <value> in step
    Then I verify the <status> in step

    Examples: 
      | name  | value | status  |
      | name1 |     5 | success |
      | name2 |     7 | Fail    |
