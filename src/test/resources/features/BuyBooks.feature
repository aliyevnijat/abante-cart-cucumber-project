Feature: Buying Books

  Scenario: Buy audio books
    Given I logged into AbanteCart Website
    And hover over books and click audio CD
    And click sort by Rating Highest
    And click on New French With Ease title    
    And click add to cart
    Then enter quantity as 3
    And click Update
    And click Country and State and choose Andorra
    And click Please Select and choose Ordino
    And ZIP input will be 21215
   And click Checkout
   And click Confirm Order
   
   Scenario: Edit account details
   Given I logged into AbanteCart Website
   Then click on Account
   And click Edit account details
   And set First Name as "Fast" 
   And set Last Name as "Furious"
   And set E-Mail as "f&f@test.com"
   And set Telephone as "123456789"
   And set Fax as "987654321"
   Then click Continue
   And Success: Your account has been successfully updated message should be displayed
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
    
    
    
