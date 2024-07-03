# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# puts "Cleaning database..."
# Restaurant.destroy_all

puts "Creating restaurants..."
tacos_city = {name: "Tacos-city", address: "7 Chelou Street, Saint-Denis XV", category: "chinese",  phone_number: +33968479472 }
pizza_agogo =  {name: "Pizza A gogo", address: "56 italia street, Marseille",category: "italian",  phone_number: +4194826018}
samoussa_parfait =  {name: "Les meilleurs Samoussa", address: "62 Reunion Island", category: "japanese", phone_number: +4827592058}
pizza_della_mama =  {name: "Pizza Della Mama", address: "2 Chez la daronne street, Lausanne", category: "french", phone_number: +21948572058}
beignet_ivoirien =  {name: "Les beignets ivoiriens", address: "3 Yamoussoukro street, Lille", category: "belgian", phone_number:+4756202847}

[tacos_city,pizza_agogo, samoussa_parfait, pizza_della_mama, beignet_ivoirien].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
