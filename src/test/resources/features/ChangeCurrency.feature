 Feature: Change Currency
 
 	Scenario: Change dollar to euro
 	
	Given I logged into AbanteCart Website 
	And Click Books
	And I saved New French With Ease book price money icon
	Then I verified money icon is $
	And I hover overed to currency dropdown menu (left on the top)
	And I changed it to pound sterling
	Then I verified money icon is changed to £
	 