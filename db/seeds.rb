# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)


# Create 10 restaurants
puts "started seeding!!"

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

puts "Completed seeding!!!"