# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ title: 'Star Wars' }, { title: 'Lord of the Rings' }])
#   Character.create(title: 'Luke', movie: movies.first)
Pricetype.create!(title: 'per day')
Pricetype.create!(title: 'per week')
Pricetype.create!(title: 'per mounth')
Pricetype.create!(title: 'per room')
Pricetype.create!(title: 'per house')
Pricetype.create!(title: 'per person')
