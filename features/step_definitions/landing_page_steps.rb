When(/^I visit the site$/) do
  visit '/'
end


Given(/^the following products exist$/) do |table|
  table.hashes.each do |product|
    Product.create(product)
  end
end

Then(/^I would like to see "([^"]*)" with the price of "([^"]*)" in "([^"]*)" section$/) do |product_name, price, section|
  expected_output = "#{product_name} - #{price}"
  section_name = section.titleize.gsub(' ', '').underscore
  within("section##{section_name}") do
    expect(page).to have_content expected_output
  end
end