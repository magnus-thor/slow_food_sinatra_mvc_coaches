And(/^I click "([^"]*)" on "([^"]*)"$/) do |element, product_name|
  @product = Product.find_by(name: product_name)
  within("#product-#{@product.id}") do
    click_link_or_button element
  end
end

Then(/^there should be an order created for me$/) do
  @order = Order.last
  expect(@order).to_not be nil
end

And(/^the order should contain "([^"]*)"$/) do |product_name|
  product = @product || Product.find_by(name: product_name)
  #item = @order.order_items.first
  item =  @order.order_items.detect {|item| item.product == product}
  expect(item.product).to eq product
end

Given(/^there is an order with order item "([^"]*)"$/) do |product_name|
  steps %Q{
      Given I visit the site
      And I click "Order" on "#{product_name}"
      Then there should be an order created for me
  }
end