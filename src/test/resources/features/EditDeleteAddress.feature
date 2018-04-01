#Author: Muhammet Koklu
	
	Feature: Edit

 
	Scenario: Edit Address
	
	Given I logged into AbanteCart Website 
 And Click Account
 And Write Login name"admin"
 And password "abc123"
 And Click Manage Address Book
 Then Save Secound address name and lastname
 And Click Secound Address Edit Button
 And Change the 