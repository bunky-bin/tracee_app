# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"

100.times do |i|
  User.create!(
   password: "password",
   first_name: Faker::Name.first_name,
   last_name: Faker::Name.last_name,
   email: Faker::Internet.email,
   location: Faker::Address.full_address,
   latitude: Faker::Address.latitude,
   longitude: Faker::Address.longitude)
end
# ADD JPEG PHOTOS LATER IN THE APP PROCESS

# userone = User.create!(first_name: "T", last_name: "Lave", email: "lavellesine@gmail.com", password: "123456")
# usertwo = User.create!(first_name: "A", last_name: "Godfrey", email: "anna@gmail.com", password: "123456")
# userthree = User.create!(first_name: "S", last_name: "Piccolo", email: "simone@gmail.com", password: "123456")
# user_photos = ['jpeg']