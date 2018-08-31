require 'HTTP'

puts "Enter an ID number:"

id = gets.chomp.to_i

puts "And a new name:"

name = gets.chomp

puts "And a new price:"

price = gets.chomp.to_i

puts "And an image URL:"

image_url = gets.chomp

puts "And a description"

description = gets.chomp

HTTP.patch("http://localhost:3000/api/products/#{id}", form: {name: name, price: price, image_url: image_url, description: description})



# puts "Add a cloud! What's its name?"

# name = gets.chomp

# puts "And its price?"

# price = gets.chomp.to_i

# puts "Describe it, please."

# description = gets.chomp

# puts "And provide a URL of a picture."

# image_url = gets.chomp

# HTTP.push("http://localhost:3000/api/products")

# @new_product = Product.new(    # Can't do this, can't create a product in the runner file. Have to do it through the HTTP push request.
#                           name: name,
#                           price: price,
#                           image_url: image_url,
#                           description: description
#                           )
# @new_product.save

# HTTP.push("http://localhost:3000/api/products")