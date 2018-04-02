#Shavkat
Feature: Buying Books

  Scenario: Buy audio books
    Given I logged into AbanteCart Website
    And I hover over books and click audio CD
    And I click sort by Rating Highest
    And I click on New French With Ease title
    And Iclick add to cart
    Then I enter quantity as 3
    And I click Update
    And I click Country and State and choose Andorra
    And I click Please Select and choose Ordino
    And I input ZIP "21215"
    And I click Checkout
    And I click Confirm Order

  Scenario: Edit account details
    Given I logged into AbanteCart Website
    Then I click on Account
    And I click Edit account details
    And I set First Name as "Fast"
    And I set Last Name as "Furious"
    And I set E-Mail as "f&f@test.com"
    And I set Telephone as "123456789"
    And I set Fax as "987654321"
    Then I click Continue
    And I see message displayed - Success: Your account has been successfully updated 
