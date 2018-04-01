Feature: Creating tasks

  Background: 
    Given I logged into AbanteCart 

  Scenario: Verify Home Page Home Option
    When I hover over the HOME menu bottom
    Then following menu options should be visible:
      | Specials |
      | Account  |
      | Cart     |
      | Checout  |

  Scenario: Edit account information
    When I hover over the Welcome back Adimn
    Then click on Edit account details
    And Set First Name "Fast & Furious"
    And Last Name "Tester"
    And Telephone "305 444 1233"
    And Continue
    Then Main page should be displayed
