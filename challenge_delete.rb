# Finding and deleting a specific product
product_to_delete = Product.find_by(name: 'Product1')
product_to_delete.destroy if product_to_delete
