# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

5.times do
  Restaurant.create!(
    name: Faker::Movies::BackToTheFuture.character,
    address: Faker::Address.street_name,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    phone_number: Faker::PhoneNumber.cell_phone
  )
end



# puts "Creating restaurants..."
# dishoom = {name: "Dishoom", category: "indian", address: "7 Boundary St, London E2 7JE"}
# pizza_east =  {name: "Pizza East", category: "italian", address: "56A Shoreditch High St, London E1 6PQ"}
# scalini =  {name: "Scalini", category: "italian", address: "Port Baku"}
# baccanale =  {name: "Baccanale", category: "italian", address: "Port Baku"}
# tendir =  {name: "Tendir", address: "Old City"}

# [dishoom, pizza_east, scalini, baccanale, tendir].each do |attributes|
#   restaurant = Restaurant.create!(attributes)
#   puts "Created #{restaurant.name}"
# end
