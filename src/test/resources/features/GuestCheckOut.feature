#Author: Mergen Bala

Feature: Guest Checkout

  Scenario: Guest Checkout with product search and same payment/shipping addresses
    Given I logged into AbanteCart Website
    And I type "men fragrance" in a search box and hits ENTER
    Then I should see Search page is loaded
    And I navigate to CK ONE GIFT SET product and clicks on a Add to Cart icon
    And I navigate to MAN Eau de Toilette Spray product and clicks on product
    Then I should see MAN Eau de Toilette Spray product's page is displayed
    And I click on Add to cart button
    Then I should see Shopping cart page is loaded and user should see that product/s were added
    And I click on Checkout button
    Then I should see Account Login page is loaded
    And I select Guest Checkout radio button and clicks on Continue button
    Then I should see GUEST CHECKOUT - STEP 1 page is loaded
    And I enter "Barack" as first name, "Obama" as last name, "obama@change.com" as email in Personal details section
    And I enter "2233 President str." as address 1, "Chicago" as city, selects "Illinois" as State, "60012" as zipcode and clicks Continue button
    Then I should see CHECKOUT CONFIRMATION page is loaded
    And I click on Confirm order button
    Then I should see YOUR ORDER HAS BEEN PROCESSED! page is loaded
    When I click on invoice page link
    Then I should see that ORDER DETAILS page is loaded and total amount, product ordered, payment and shipping addresses are correct

  Scenario: Guest Checkout with invalid coupon code and different payment and shipping addresses
    Given I am on ABANTECART  home page
    And I hover over Fragrance dropdown menu
    Then I should see Men option and clicks on Men option
    Then I should see Men page is loaded
    And I navigate to MAN Eau de Toilette Spray product and clicks on product
    Then I should see MAN Eau de Toilette Spray product's page is displayed
    And I click on Add to cart button
    Then I should see Shopping cart page is loaded and user should see that product/s were added
    And I enter "50%OFF" coupon code and clicks on Apply Coupon button
    Then I should see "Error: Coupon is either invalid, expired or reached it's usage limit!" error message
    And I click on Checkout button
    Then I should see Account Login page is loaded
    And I selects Guest Checkout radio button and clicks on Continue button
    Then I should see GUEST CHECKOUT - STEP 1 page is loaded
    And I enter "Barack" as first name, "Obama" as last name, "obama@change.com" as email in Personal details section
    And I enter "2233 President str." as address 1, "Chicago" as city, selects "Illinois" as State, "60012" as zipcode and clicks on Check here if you have a separate shipping address checkbox
    And I enter "Michelle" as first name, "Obama" as last name, "777 Obama str." as address 1, "Orlando" as city, selects "Florida" as State, "32707" as zipcode and clicks on Continue button
    Then I should see CHECKOUT CONFIRMATION page is loaded
    And I click on Confirm order button
    Then I should see YOUR ORDER HAS BEEN PROCESSED! page is loaded
    When I click on invoice page link
    Then I should see that ORDER DETAILS page is loaded and total amount, product ordered, payment and shipping addresses are correct
