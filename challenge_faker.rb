# db/challenge_faker.rb
require 'faker'

# Assuming you have a Category and Product model already defined with appropriate associations

10.times do
  # Create a new category with a random name
  category = Category.create(name: Faker::Commerce.department)

  # Create 10 new products for each category
  10.times do
    category.products.create(
      name: Faker::Commerce.product_name,
      description: Faker::Lorem.sentence,
      price: Faker::Commerce.price(range: 1.0..100.0),
      stock_quantity: Faker::Number.between(from: 1, to: 100)
    )
  end
end

puts "10 categories and 100 products generated successfully using Faker."
