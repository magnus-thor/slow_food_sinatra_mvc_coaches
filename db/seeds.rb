require 'faker'

10.times do
  Product.create(
             name: Faker::Food.dish,
             category: Product::VALID_CATEGORIES.sample,
             price: rand(10..100),
             description: Faker::Lorem.paragraph
  )
end