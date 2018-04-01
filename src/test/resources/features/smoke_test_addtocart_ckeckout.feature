Feature: 

  Scenario: 
    Given I logged into AbanteCart Website
    Then I hover over Account and click on Login
    And I Enter Login name "vasif123" and password "vasif123"
    And Verify "MY ACCOUNT" is displayed
    Then I HoverOver Apparel & accessories and click T-shirts
    And Verify "T-SHIRTS" is displayed
    Then I click on  Fruit of the Loom T-Shirts 5 Pack - Super Premium and add to card
    And Verify that displayed total price equals 12.84
    Then Continue shopping
    And I click on Mens Fine Cotton Giraffe Polo Shirts and add to card
    Then Verify that displayed total price equals 35.62
    Then Click checkout and confirm order
    And Verify "YOUR ORDER HAS BEEN PROCESSED!" is didplayed

  Scenario Outline: 
    Given I logged into AbanteCart Website
    Then I hover over Account and click on Login
    And I Enter Login name "<logInName>" and password "password"
    And Verify "MY ACCOUNT" is displayed
    Then I HoverOver Apparel & accessories and click T-shirts
    And Verify "T-SHIRTS" is displayed
    Then I click on  Fruit of the Loom T-Shirts 5 Pack - Super Premium and add to card
    And Verify that displayed total price equals 12.84
    Then Continue shopping
    And I click on Mens Fine Cotton Giraffe Polo Shirts and add to card
    Then Verify that displayed total price equals 35.62
    Then Click checkout and confirm order
    And Verify "YOUR ORDER HAS BEEN PROCESSED!" is didplayed

    Examples: 
      | logInName | password |
      | azat123   | azat123  |
      | jason123  | jason123 |
      | dow123    | dow123   |
