#Author: Muhammet Koklu
 Feature: Change Currency
 
 	Scenario: Change Dollar to Pound Sterling
 	
	Given I logged into AbanteCart Website 
	And Click Books 
	And I saved New French With Ease book price money icon 
	Then I verified money icon is $
	And I hover overed to currency dropdown menu (left on the top)
	And I changed it to euro
	Then I verified money icon is changed to £
	  
	  
	 	Scenario: Change Dollar to Euro
 	
	Given I logged into AbanteCart Website 
	And Click Books
	And I saved New French With Ease book price money icon
	Then I verified money icon is $
	And I hover overed to currency dropdown menu (left on the top)
	And I changed it to pound sterling
	Then I verified money icon is changed to €
=======
#Author: Muhammet Koklu

Feature: Change Currency

  Scenario: Change Dollar to Pound Sterling
    Given I am on AbanteCart Home Page
    And I Click Books
    And I saved New French With Ease book price money icon
    Then I verified money icon is $
    And I hover overed to currency dropdown menu (left on the top)
    And I changed it to euro
    Then I verified money icon is changed to ï¿½

  Scenario: Change Dollar to Euro
    Given I logged into AbanteCart Website
    And I Click Books
    And I saved New French With Ease book price money icon
    Then I verified money icon is $
    And I hover overed to currency dropdown menu (left on the top)
    And I changed it to pound sterling
    Then I verified money icon is changed to ï¿½
>>>>>>> branch 'master' of https://github.com/aliyevnijat/abante-cart-cucumber-project.git
