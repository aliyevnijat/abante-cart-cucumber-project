#Author: Muhammet Koklu
	
	Feature: Edit

 
	Scenario: Edit Address
	
	Given I logged into AbanteCart Website 
 And Click Account
 And Click Manage Address Book
 Then Save Secound address name and lastname
 And Click Secound Address Edit Button
 And Change the change the firstname as "Cristiano" Last Name "Messi"
 And I click Continue
 Then I should see Fistname and Lastname information as Cristiano Messi 
 
 Scenario: Delete Address
	
 Given I logged into AbanteCart Website  
 And Click Account
 And I click Manage Address Book
 And I save first three names and address
 And I click delete button of first three name and address
 Then First three address names are not visible 
 
 