#Author: Ekaterina

Feature: Add to and Removing from Wishlist

  Scenario: Adding product to Wish list
    Given I logged into AbanteCart Website
    When I go to tab Hair Care
    And I choose option Conditioner
    Then I'm on page with Conditioner products
    When I click on the product with name HIGHLIGHTING EXPRESSIONS
    Then I see page with the same product name  HIGHLIGHTING EXPRESSIONS
    And I see option Add to wish list
    When I press on the option Add to wish list
    Then I see option Remove from wish list
    When I hover over ACCOUNT and press on CHECK YOUR ORDER
    Then I see button My wish list
    When I press button My wish list
    Then I see page MY WISH LIST
    And I see product with name HIGHLIGHTING EXPRESSIONS

  Scenario: Deleting product from Wish list
    Given I logged into AbanteCart Website
    When I go to tab Hair Care
    And I choose option Conditioner
    Then I'm on page with Conditioner products
    When I click on the product with name HIGHLIGHTING EXPRESSIONS
    Then I see page with the same product name  HIGHLIGHTING EXPRESSIONS
    And I see option Add to wish list
    When I press on the option Add to wish list
    Then I see option Remove from wish list
    When I hover over ACCOUNT and press on CHECK YOUR ORDER
    Then I see button My wish list
    When I press button My wish list
    Then I see page MY WISH LIST
    And I see one product in MY WISH LIST
    When I hover over MAKEUP and choose CHEEKS
    And I choose TROPIQUES MINERALES LOOSE BRONZER
    Then I see page with the same product name TROPIQUES MINERALES LOOSE BRONZER
    And I see option Add to wish list
    When I press on the option Add to wish list
    Then I see option Remove from wish list
    When I hover over ACCOUNT and press on CHECK YOUR ORDER
    Then I see button My wish list
    When I press button My wish list
    Then I see page MY WISH LIST
    And I see two product in MY WISH LIST
    When I click on a trash-can icon
    Then One of the products gets deleted and I can only see one product left in MY WISH LIST
