Feature: User with order can checkout
  As a visitor
  In order to get the food I ordered
  I would like to be able to finalize my order (checkout)


  Background:
    Given the following products exist
      | name      | price | description     | category    |
      | Pizza     | 50    | Great Pizza     | Main course |
      | Kebab     | 75    | Great Kebab     | Main course |
      | Hamburger | 45    | Great Hamburger | Main course |

    And the time is "12:00"

    Given I visit the site
    Given there is an order with order item "Kebab"
    And there is an order with order item "Pizza"


  Scenario Outline: User can see checkout
    And I click "Checkout"
    Then I should be on the checkout page
    Then I should see <product> and <price> in the order
    And I should see "Order total: 125 kr"
    And I should see "Estimated pickup time: 12:30"

    Examples:
      | product | price |
      | Kebab   | 75    |
      | Pizza   | 50    |

    Scenario: User can finalize his order
      And I click "Checkout"
      And I click "Confirm order"
      Then I should see "Thank you for your business"
      And I should see "Confirmed pickup time: 12:30"
      And my order should be marked confirmed
