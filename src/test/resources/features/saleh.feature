#Author: Saleh

Feature: Verify Home Page Options, Edit Account info

  Background: 
    Given I logged into AbanteCart Website

  Scenario: Verify Home Page Home Option
    When I hover over the HOME menu bottom
    Then following menu options should be visible:
      | Specials |
      | Account  |
      | Cart     |
      | Checout  |

  Scenario: Edit account information
    When I hover over the Welcome back Adimn
    Then I click on Edit account details
    And I set First Name "Fast & Furious"
    And I set Last Name "Tester"
    And I set Telephone "305 444 1233"
    And I click Continue
    Then Main page should be displayed
