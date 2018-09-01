require 'HTTP'

puts "What would you like to do: 1. See all clouds 2. Create a cloud 3. See a specific cloud 4. Update a specific cloud 5. Destroy a specific cloud. Type in a number."
answer = gets.chomp.to_i

if answer == 1

  HTTP.get("http://localhost:3000/api/products")

elsif answer == 2

  puts "What's the name of the new cloud?"
  name = gets.chomp

  puts "And the price?"
  price = gets.chomp

  puts "Add an image URL of the new cloud, please:"
  image_url = gets.chomp

  puts "And, finally, describe the cloud."
  description = gets.chomp

  HTTP.post("http://localhost:3000/api/products", form: {name: name, price: price, image_url: image_url, description: description})

elsif answer == 3

  puts "What's the ID of the cloud you'd like to see?"
  id = gets.chomp.to_i

  HTTP.get("http://localhost:3000/api/products?id=#{id}")

elsif answer == 4

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

elsif answer == 5

  puts "What's the ID of the cloud you'd like to destroy"
  id = gets.chomp.to_i

  HTTP.delete("http://localhost:3000/api/products/#{id}")

end
# the URL is what activates the actions in the controller. You don't need any logic in the runner file; you just need to send information.