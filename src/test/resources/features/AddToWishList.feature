#Author: Ekaterina


Feature: Add To Wishlist
  
  Scenario: Adding product to Wish list
    Given I am logged in and on the Home Page
    When I go to tab "Hair Care"
    And I choose option "Conditioner"
    Then I'm on page with "Conditioner" products
    When I click on the product with name "HIGHLIGHTING EXPRESSIONS"
    Then I see page with the same product name  "HIGHLIGHTING EXPRESSIONS"
    And I see option "Add to wish list"
    When I press on the option "Add to wish list"
    Then I see option "Remove from wish list"
    When I hover over "ACCOUNT" and press on "CHECK YOUR ORDER"
    Then I see button "My wish list"
    When I press button "My wish list"
    Then I see page "MY WISH LIST"
    And I see product with name "HIGHLIGHTING EXPRESSIONS"
   


  @tag2
  Scenario Outline: Title of your scenario outline
    Given I want to write a step with <name>
    When I check for the <value> in step
    Then I verify the <status> in step

    Examples: 
      | name  | value | status  |
      | name1 |     5 | success |
      | name2 |     7 | Fail    |
