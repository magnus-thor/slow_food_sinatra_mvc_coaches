Feature: User can add product to order
  As a visitor
  In order to get some tasty food
  I would like to be able to add products to an order


  Background:
    Given the following products exist
      | name      | price | description     | category    |
      | Pizza     | 50    | Great Pizza     | Main course |
      | Kebab     | 75    | Great Kebab     | Main course |
      | Hamburger | 45    | Great Hamburger | Main course |


    Scenario: User click "Order" on a product and creates an order
      Given I visit the site
      Then show me the page
      And I click "Order" on "Kebab"
      Then there should be an order created for me
      And the order should contain "Kebab"
      And I should see "Kebab was added to your order"
      