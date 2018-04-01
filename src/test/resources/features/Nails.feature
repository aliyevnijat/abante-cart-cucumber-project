Feature: Nails I want to use this template for my feature file

  @tag1
  Scenario: Buy Nail Product
    Given I logged into AbanteCart Website
    When I hover over the "MAKEUP"
    Then I click on the "NAILS"
    Then I choose "FLUID SHINE NAIL POLISH"
    And Verify the Pirce is "$137"
    And I click on the add to cart button
    Then I Choose Country "United States"
    And I choose City "Illinois"
    And I type Zipcode "60018"
    Then I click Check out button on the bottom
    Then Click on the Continue Shopping 
