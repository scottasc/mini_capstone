require 'HTTP'

puts "Pick a number: 1. See all clouds 2. Create a cloud 3. See a specific cloud 4. Update a cloud 5. Destroy a cloud."
answer = gets.chomp.to_i

if answer == 1

  response = HTTP.get("http://localhost:3000/api/products")
  data = response.parse
  data.each do |cloud|
    p "ID: #{cloud["id"]}, Name: #{cloud["name"]}, Price: #{cloud["price"]}, Image URL: #{cloud["image_url"]}, Description: #{cloud["description"]}"
  end

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

  response = HTTP.get("http://localhost:3000/api/products")
  data = response.parse
  new_cloud = data.last
  p "You've added a #{new_cloud["name"]} cloud."

elsif answer == 3

  puts "What's the ID of the cloud you'd like to see?"
  id = gets.chomp.to_i

  cloud = HTTP.get("http://localhost:3000/api/products/#{id}").parse

  p "This is a #{cloud["name"]} cloud that costs #{cloud["price"]} dollars. It has been described as #{cloud["description"]} and you can view it here: #{cloud["image_url"]}."


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

  cloud = HTTP.get("http://localhost:3000/api/products/#{id}").parse

  p "You've updated it to: A #{cloud["name"]} cloud that costs #{cloud["price"]} dollars. It has been described as #{cloud["description"]} and you can view it here: #{cloud["image_url"]}."


elsif answer == 5

  puts "What's the ID of the cloud you'd like to destroy"
  id = gets.chomp.to_i

  HTTP.delete("http://localhost:3000/api/products/#{id}")

  puts "Great work, you destroyed the cloud."

end
# the URL is what activates the actions in the controller. You don't need any logic in the runner file; you just need to send information.