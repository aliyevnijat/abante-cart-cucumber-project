#Author Bilal

Feature: Nails

 
  Scenario: Buy Nail Product 
    Given I am on AbanteCart Home Page
    When I hover over the "MAKEUP"
    Then following menu options should be visible:
      | Cheeks	   |
      | Eyes      |
      | Face      |
      | Lips      |
      | Nails     |
      | Value Sets|
      
    Then I should be able to choose "Nails"
    Then I should be able to choose "FLUID SHINE NAIL POLISH"
    Then Verify the Pirce is "$137"
    When I click on the add to cart button
    Then I should be able to Choose Country "United States"
    And I choose City "Illinois"
    And I type Zipcode "60018"
    Then I should be able to click Check out button on the bottom
    Then Click on the Continue Shopping 

     Scenario: Verify View and Write Rewiev is visible
    Given I logged into AbanteCart Website
    When I hover over the "SKIN CARE"
    Then following menu options should be visible:
      
      | Eyes             |
      | Face             |
      | Gift ideas & Sets|
      |  Hands & Nails   |
      | Sun              |
      
    And I click on the "SUN"
    Then I should see "Flash Bronzer Body Gel"
    When I hover over ont the Image 
    Then I "View and  Write Rewiev" option shoulde be visible
    
    