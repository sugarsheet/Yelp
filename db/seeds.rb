# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "1234567", category: "french"}
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "1234567", category: "french" }
thai = { name: "Thai", address: "54 rue Oberkampf, Paris 75011", phone_number: "1234567", category: "french" }
alicheur =  { name: "Alicheur", address: "10 rue Saint Maur, Paris 75011", phone_number: "1234567", category: "french" }
surpriz = { name: "Surpriz", address: "7 Boundary St, Paris 75010", phone_number: "1234567", category: "french" }



[ dishoom, pizza_east, thai, alicheur, surpriz ].each do |attributes|
restaurant = Restaurant.create!(attributes)
puts "Created #{restaurant.name}"
end
puts "Finished!"
