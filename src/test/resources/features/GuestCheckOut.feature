#Author: Mergen Bala
	
Feature: Guest Checkout
  
 		
Scenario: Guest Checkout with product search and same payment/shipping addresses
  
 Given I logged into AbanteCart Website 
 And User types "men fragrance" in a search box and hits ENTER
 Then User should see Search page is loaded
 And User navigates to CK ONE GIFT SET product and clicks on a Add to Cart icon  
 And User navigates to MAN Eau de Toilette Spray product and clicks on product
 Then  User should see MAN Eau de Toilette Spray product's page is displayed
 And User clicks on Add to cart button
 Then User should see Shopping cart page is loaded and user should see that product/s were added
 And User clicks on Checkout button
 Then User should see Account Login page is loaded
 And User selects Guest Checkout radio button and clicks on Continue button
 Then User should see GUEST CHECKOUT - STEP 1 page is loaded
 And User enters "Barack" as first name, "Obama" as last name, "obama@change.com" as email in Personal details section 
 And User enters "2233 President str." as address 1, "Chicago" as city, selects "Illinois" as State, "60012" as zipcode and clicks Continue button
 Then User should see CHECKOUT CONFIRMATION page is loaded 
 And User clicks on Confirm order button
 Then User should see YOUR ORDER HAS BEEN PROCESSED! page is loaded
 When User clicks on invoice page link
Then User should see that ORDER DETAILS page is loaded and total amount, product ordered, payment and shipping addresses are correct

 
 Scenario: Guest Checkout with invalid coupon code and different payment and shipping addresses
  
 Given User is on ABANTECART  home page 
 And User hover over Fragrance dropdown menu
 Then User should see Men option and clicks on Men option 
 Then User should see Men page is loaded
 And User navigates to MAN Eau de Toilette Spray product and clicks on product
 Then  User should see MAN Eau de Toilette Spray product's page is displayed
 And User clicks on Add to cart button
 Then User should see Shopping cart page is loaded and user should see that product/s were added
 And User enters "50%OFF" coupon code and clicks on Apply Coupon button
 Then User should see "Error: Coupon is either invalid, expired or reached it's usage limit!" error message
 And User clicks on Checkout button
 Then User should see Account Login page is loaded
 And User selects Guest Checkout radio button and clicks on Continue button
 Then User should see GUEST CHECKOUT - STEP 1 page is loaded
 And User enters "Barack" as first name, "Obama" as last name, "obama@change.com" as email in Personal details section 
 And User enters "2233 President str." as address 1, "Chicago" as city, selects "Illinois" as State, "60012" as zipcode and clicks on Check here if you have a separate shipping address checkbox
 And User enters "Michelle" as first name, "Obama" as last name, "777 Obama str." as address 1, "Orlando" as city, selects "Florida" as State, "32707" as zipcode and clicks on Continue button
 Then User should see CHECKOUT CONFIRMATION page is loaded 
 And User clicks on Confirm order button
 Then User should see YOUR ORDER HAS BEEN PROCESSED! page is loaded
 When User clicks on invoice page link
 Then User should see that ORDER DETAILS page is loaded and total amount, product ordered, payment and shipping addresses are correct