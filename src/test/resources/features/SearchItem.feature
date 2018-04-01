Feature: Search Item

  Scenario: Search item in a Search Keyword
    Given	 Enter search shoes'<searchShoes>'
    When	Do search
    
    Then	Multiple results are shown for '<result>'
    Examples:
    | searchTerm | result |
    | shoes | shoes may refer to: |


  #	Home Page
  #In order to test Home Page of application
  # As a Registered user
  # I want to specify the features of home page
  Scenario: Home Page Default content
    Given	 user is on ABANTECART  home page
    Then	user see  AbanteCart's  multiply items
    And	username is also displayed in the central 
    Then	 user gets an option to buy any items on AbanteCart website
