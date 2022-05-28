# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning database"
User.destroy_all

puts "start seeds"

userone = User.create!(first_name: "T", last_name: "Lave", email: "lavellesine@gmail.com", password: "123456",
                        availability: true)
usertwo = User.create!(first_name: "Mark", last_name: "Wales", email: "testoone@gmail.com", password: "123456",
                       availability: true)
usertree = User.create!(first_name: "Lucas", last_name: "La croux", email: "tryemail@gmail.com", password: "123456",
                        availability: false)
puts "users created"
