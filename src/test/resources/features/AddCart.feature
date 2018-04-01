 Feature: Add Item to cart
 
 	Scenario: Add new item to cart
 	
	Given I logged into AbanteCart Website 
	And Click Skincare   
	And I sort By: “Price High>Low”  
	Then I verified Items listed by price high to low 
	And I clicked on ABSOLUE EYE PRECIOUS CELLS
	And I changed quantity to the 3
	And I save the quantity,unit price, total price and name of the item 
	When I clicked add to cart   
	Then I verified quantity,unit price, total price and name of the item as I saved
	Then I verified retail 8.5% is equal to Sub-total multiply by 8.5 divided by 100 
	Then I verified total is equal to Sub-total plus flat shipping rate plus retail 8.5%
	
	