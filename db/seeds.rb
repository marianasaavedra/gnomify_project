# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'destroying existing gnomes...'
Gnome.destroy_all

puts 'creating 100 gnomes...'
100.times do
  Gnome.create!(
    name: Faker::Movies::LordOfTheRings.character,
    power: Faker::Superhero.power,
    description: Faker::GreekPhilosophers.quote,
    price: Faker::Number.within(range: 20.0..500.0).round(2),
    address: Faker::Address.full_address
  )
end

puts 'added gnomes complete'
