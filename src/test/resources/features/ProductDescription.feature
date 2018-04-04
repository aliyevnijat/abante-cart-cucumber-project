#Author: Ekaterina

Feature: Product Description

  Scenario: Click on Product - Product name and product price on the Product Description page are the same as on the Multiple Products page
    Given I am on AbanteCart Home Page
    When I go to tab FRAGRANCE
    And I choose option WOMEN
    Then I am on page with WOMEN products
    And I see the product with name BEAUTY EAU DE PARFUM and price $50
    When I click on the product with name BEAUTY EAU DE PARFUM and price $50
    Then I see page with the same product name  BEAUTY EAU DE PARFUM and price $50

  Scenario: Click on View - Product name on the Product Description page is the same as on the Multiple Products page
    Given I logged into AbanteCart Website
    When I go to tab SKINCARE
    And I choose option EYES
    Then I am on page with EYES products
    And I see product ABSOLUTE EYES PRECIOUS CELLS
    When I hover over a product
    And I click on View button
    Then I see page with the same product name ABSOLUTE EYES PRECIOUS CELLS
