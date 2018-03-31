 Feature: Add Address
 
 	Scenario: Add New Address
 	
	Given I logged into AbanteCart Website 
	And Click Account
	And Write Login name"admin"
	And password "abc123"
	And Click Manage Address Book
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
	When I click to delete
	Then I should not displayed a name ,company name and address as below
		
		 