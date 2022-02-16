# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
comptoir44 = { name: 'Comptoir 44', address: '44 rue de Gand, Lille', category: 'french', phone_number: '0659516507' }
bottega = { name: 'Bottega', address: '1 place aux Oignons, Lille', category: 'italian', phone_number: '0712345678' }
vieuxdelavieille = { name: 'Vieux de la Vieille', address: '65 rue des Bouchers, Lille', category: 'belgian', phone_number: '0698765432' }
kartofel = { name: 'Kartofel', address: '2 rue Hitler, Berlin', category: 'chinese', phone_number: '0320456789' }
lebraque = { name: 'Le Braque', address: '45/47 Rue de la Monnaie, Lille', category: 'japanese', phone_number: '0320456789' }

[comptoir44, bottega, vieuxdelavieille, kartofel, lebraque].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
