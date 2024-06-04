load 'ar.rb'

# Method 1: Using new and save
product1 = Product.new(name: 'Product1', description: "item", price: 15.99, stock_quantity: 10)
if product1.save
  puts 'Product1 saved successfully'
else
  puts product1.errors.full_messages
end

# Method 2: Using create
product2 = Product.create(name: 'Product2', description: "item", price: 20.99, stock_quantity: 8)

# Method 3: Using new with a block
product3 = Product.new do |p|
  p.name = 'Product3'
  p.description = "item"
  p.price = 25.99
  p.stock_quantity = 5
end
if product3.save
  puts 'Product3 saved successfully'
else
  puts product3.errors.full_messages
end

# Creating a Product with missing columns
invalid_product = Product.new(name: 'Inv')
if invalid_product.save
  puts 'InvalidProduct saved successfully'
else
  puts invalid_product.errors.full_messages
end
