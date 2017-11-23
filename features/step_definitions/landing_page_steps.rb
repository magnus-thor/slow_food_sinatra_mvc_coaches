Given(/^there is a dish called "([^"]*)" with a price of "([^"]*)" and description of "([^"]*)" in the system$/) do |product_name, price, description|
  Product.create(name: product_name, price: price.to_i, description: description)
end

When(/^I visit the site$/) do
  visit '/'
end


Given(/^the following products exist$/) do |table|
  table.hashes.each do |product|
    Product.create(product)
  end
end