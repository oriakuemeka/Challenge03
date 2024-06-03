# Finding the name of the category associated with a product
product = Product.first
puts "Category name: #{product.category.name}"

# Building and persisting a new product associated with a specific category
category = Category.find_by(name: 'SpecificCategory')
new_product = category.products.build(name: 'NewProduct', price: 30.99, stock_quantity: 15)
if new_product.save
  puts 'NewProduct associated with SpecificCategory saved successfully'
else
  puts new_product.errors.full_messages
end

# Finding products over a certain price associated with a specific category
expensive_products = category.products.where("price > ?", 25.00)
puts "Expensive products in SpecificCategory: #{expensive_products.pluck(:name)}"
