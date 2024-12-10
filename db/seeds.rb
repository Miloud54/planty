require "open-uri"
require 'faker'
require "json"

puts 'Cleaning database...'
Plant.destroy_all
User.destroy_all
Booking.destroy_all

puts "Creating users..."

users = []

10.times do
  users << User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "azerty",
    address: Faker::Address.full_address
  )
end

puts "Creating plants..."

url = "https://perenual.com/api/species-list?key=sk-Gamg67583cb81fb737953"
plant_list = URI.open(url).read
plant_data = JSON.parse(plant_list)

plants = plant_data["data"]

  plants.take(10).each do |plant|
    Plant.create!(
      name: plant["common_name"] || "Unknown Plant",
      watering: plant["watering"] || "unknown",
      image: plant.dig("default_image", "original_url"),
      sunlight: plant["sunlight"] ? plant["sunlight"].join(", ") : "unknown",
      price_per_day: rand(10..100),
      cycle: plant["cycle"] || "unknown",
      user_id: users.sample.id
    )
end
puts "Seeding complete! Created #{User.count} users and #{Plant.count} plants"
