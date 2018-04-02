#Athor: Maria

Feature: Search Item

#	Home Page
  #In order to test Home Page of application
  # As a Registered user
  # I want to specify the features of home page
  Scenario: Home Page Default content
    Given	 I logged into AbanteCart Website
    Then	I see AbanteCart's  multiply items
    And	I see username displayed in the center 
    Then	I see an option to buy any items on AbanteCart website


  Scenario: Search item in a Search Keywords box
    Given	 I enter "shoes"
    When	I click Search
    Then	Multiple results are shown for shoes
    
  Scenario Outline: Search item in a Search Keywords box
    Given	 I enter '<item name>'
    When	I click Search
    Then	Multiple results are shown for shoes
    Examples:
    | shoes |
    | shampoo |
		| deodorant |    

