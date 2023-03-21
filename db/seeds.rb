# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)
# puts "Creating pizzas"
# pizzas = []
# pizzas << Pizza.create(name:"Marinara", ingredients:"tomatoes, garlic, oregano, and extra virgin olive oil")
# pizzas << Pizza.create(name:"Margherita", ingredients:"tomatoes, sliced mozzarella, basil, and extra virgin olive oil")
# pizzas << Pizza.create(name:"Margherita extra", ingredients:"tomatoes, mozzarella from Campania, basil, and extra virgin olive oil")
# pizzas << Pizza.create(name:"Cheese", ingredients:"Dough, Tomato Sauce, Cheese")
# pizzas << Pizza.create(name:"Pepperoni", ingredients:"Dough, Tomato Sauce, Cheese, Pepperoni")


# puts "Creating restaurants"
# restaurants = []
# 10.times do
#     restaurants << Restaurant.create(name: Faker::Restaurant.name, address:Faker::Address.full_address)
# end

# puts "creating restaurant-pizzas"
# 10.times do
#     RestaurantPizza.create(price: rand(2..29), pizza_id: pizzas.sample.id, restaurant_id: restaurants.sample.id)
# end

# Pizza.destroy_all
# Restaurant.destroy_all

# puts 'Seeding Pizzas...'

# 20.times do
#   Pizza.create(
#     [{ name: Faker::Food.dish, ingredients: Faker::Food.description }],
#   )
# end

# puts 'Done seeding Pizzas!'

# puts 'Seeding Restaurants...'

# 20.times do
#   Restaurant.create(
#     [{ name: Faker::Restaurant.name, address: Faker::Address.full_address }],
#   )
# end
# puts 'Done seeding Restaurants!'

# puts 'Seeding restaurant pizzas...'

# 20.times do
#   RestaurantPizza.create(
#     [
#       {
#         restaurant_id: rand(1..20),
#         pizza_id: rand(1..20),
#         price: rand(1...30)
#       },
#     ],
#   )
# end

# puts 'Done seeding restaurant pizzas!'

# Create 10 restaurants
puts "started seeeeedding!!"

10.times do
  name = Faker::Restaurant.name
  address = Faker::Address.full_address
  Restaurant.create(name: name, address: address)
end

# Create 20 pizzas
20.times do
  name = Faker::Food.dish
  ingredients = Faker::Food.ingredient
  Pizza.create(name: name, ingredients: ingredients)
end
# Create 30 restaurant_pizzas
30.times do
  #ingredients = Faker::Food.ingredient
  price = rand(40..200)
  pizza_id = rand(1..20)
  restaurant_id = rand(1..10)
  RestaurantPizza.create(price: price, pizza_id: pizza_id, restaurant_id: restaurant_id)
end

puts "Compleeeted seeeding!!!"