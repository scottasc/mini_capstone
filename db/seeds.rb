# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category = Category.create(name: "Expensive") # price > 50

ProductCategory.create(category_id: category.id, product_id: 11)
ProductCategory.create(category_id: category.id, product_id: 7)
ProductCategory.create(category_id: category.id, product_id: 12)