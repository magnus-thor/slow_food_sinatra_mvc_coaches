Given(/^there are "([^"]*)" users in the database$/) do |count|
  #binding.pry
  count.to_i.times do
    User.create(name: Faker::Name.name, password: 'whatever_works')
  end
end

Given(/^I visit the users page$/) do
  visit '/users'
end

Then(/^I should see "([^"]*)" users$/) do |count|
  expect(page).to have_css 'div .user', count: count.to_i
end

Then(/^show me the page$/) do
  save_and_open_page
end

Then(/^I would like to see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then(/^I would like to see "([^"]*)" with the price of "([^"]*)"$/) do |product_name, price|
  expected_output = "#{product_name} - #{price}"
  expect(page).to have_content expected_output
end