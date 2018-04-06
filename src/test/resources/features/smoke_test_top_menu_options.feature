Feature: 

  Background: 
    Given I logged into AbanteCart Website

  @test
  Scenario: 
    When I hover over Home menu button
    Then Following menu options shoul be visible for Home menu
      | Specials |
      | Account  |
      | Cart     |
      | Checkout |

  @test
  Scenario: 
    When I hover over Apparel & Accessories menu button
    Then Following menu options shoul be visible for Apparel & Accessories:
      | Shoes    |
      | T-shirts |

  @test
  Scenario: 
    When I hover over MAKEUP menu button
    Then Following menu options shoul be visible for MAKEUP:
      | Cheeks     |
      | Eyes       |
      | Face       |
      | Lips       |
      | Nails      |
      | Value Sets |

  @test
  Scenario: 
    When I hover over SKINCARE menu button
    Then Following menu options shoul be visible for SKINCARE:
      | Eyes              |
      | Face              |
      | Gift Ideas & Sets |
      | Hands & Nails     |
      | Sun               |

  @test
  Scenario: 
    When I hover over FRAGRANCE menu button
    Then Following menu options shoul be visible for FRAGRANCE:
      | Men   |
      | Women |

  @test
  Scenario: 
    When I hover over MEN menu button
    Then Following menu options shoul be visible for MEN:
      | Body & Shower       |
      | Fragrance Sets      |
      | Pre-Shave & Shaving |
      | Skincare            |

  @test
  Scenario: 
    When I hover over HAIR CARE menu button
    Then Following menu options shoul be visible for HAIR CARE:
      | Conditioner |
      | Shampoo     |

  @test
  Scenario: 
    When I hover over BOOKS menu button
    Then Following menu options shoul be visible for BOOKS:
      | Audio CD  |
      | Paperback |
