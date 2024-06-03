# lib/scripts/challenge_faker_read.rb
# Fetch all categories from the database
categories = Category.includes(:products).all

# Display each category with its associated products
categories.each do |category|
  puts "Category: #{category.name}"
  category.products.each do |product|
    puts "  - Product Name: #{product.name}, Price: $#{'%.2f' % product.price}"
  end
end
