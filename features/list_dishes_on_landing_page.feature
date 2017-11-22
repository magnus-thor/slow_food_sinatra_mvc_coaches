Feature: List dishes on landing page
  As a consumer/visitor
  In order to be able to make a choice on what dish to order
  I would like to see a list of available dishes as soon as I get to the site

  Scenario: Visitor see a list of dishes on the page
    Given there is a dish called "Pizza" with a price of "50" and description of "Great Pizza" in the system
    And there is a dish called "Kebab" with a price of "75" and description of "Great Kebab" in the system
    And there is a dish called "Hamburger" with a price of "45" and description of "Great Hamburger" in the system
    When I visit the site
    Then I would like to see "Pizza" with the price of "50 kr"
    And I would like to see "Great Pizza"
    And I would like to see "Kebab" with the price of "75 kr"
    And I would like to see "Great Kebab"
    And I would like to see "Hamburger" with the price of "45 kr"
    And I would like to see "Great Hamburger"
