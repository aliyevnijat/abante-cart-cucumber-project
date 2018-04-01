#Author: Muhammet Koklu
	
	Feature: Count Add Address
  
 		
	Scenario: Add New Address
  
 Given I logged into AbanteCart Website 
 And Click Account
 And Click Manage Address Book
 Then I count how many address there is in manage address book page 		
 And Click to New Address 
 And Write "David" as a first name 
 And Write "Silva" as a Last Name 
 And Write "Orange" as a Company 
 And Write  "683 North" as a Address1 
 And Write "Merge" as a City
  And Select "New York" as a Region/State
  And Write "11223" as a Zip / Post Code
 When I click to continue
 Then I should displayed a name ,company name and address as below
 

  Scenario Outline: Add Multiple New Address
  
    Given I logged into AbanteCart Website
    And Click Account
    And Click Manage Address Book
    And Click to New Address
    And I enter the first name "<firstname>" and the last name "<lastname>"
    And I enter the phone number "<Company>"
    And I enter the phone number "<Address1>"
    And I enter the phone number "<city>"
    And I enter the phone number "<Region/State>"
    And I enter the phone number "<Zip/PostCode>"
    When I click to continue
    Then I should see contact information for "<firstname> <lastname> <Company><Address1><city><Region/State><Zip/PostCode>"
		Then I count how many address there is in manage address book page 
    Examples: 
      | firstname | lastname | Company | Address1 | city       | Region/State | Zip/PostCode |
      | Satoshi   | Nakamuro | Orange  | Block    | westfielsd | New jersey   |        05042 |
      | John      | Smith    | thefect | Central  | eastfield  | Florida      |        07032 |
      | Rajesh    | Trewedi  | micro   | North    | Life       | New York     |       024521 |
      | Bonnie    | Garcia   | Mymazon | East     | Carlstad   | Virginia     |        29395 |
		
  
   
 		
 
 
 
 