# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts 'Clearing database...'
Pet.destroy_all

puts 'Generating pets...'

# species = %w[dog cat bird horse]

10.times do
  Pet.create(
    name: Faker::Name.name,
    species: Pet::SPECIES.sample,
    address: Faker::Address.street_address
    # found_on: nil
  )
end

puts "Done, #{Pet.count} pets are lost."
