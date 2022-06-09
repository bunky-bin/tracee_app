# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require "faker"

# 50.times do
#   User.create!(
#     password: "password",
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     location: Faker::Address.full_address,
#     latitude: Faker::Address.latitude,
#     longitude: Faker::Address.longitude,
#     availability: true
#   )
# end
# puts "true faker ok"
# 50.times do
#   User.create!(
#     password: "password",
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     location: Faker::Address.full_address,
#     latitude: Faker::Address.latitude,
#     longitude: Faker::Address.longitude,
#     availability: false
#   )
# end
# puts "false faker ok"
# ADD JPEG PHOTOS LATER IN THE APP PROCESS

# userone = User.create!(first_name: "T", last_name: "Lave", email: "lavellesine@gmail.com", password: "123456")
# usertwo = User.create!(first_name: "A", last_name: "Godfrey", email: "anna@gmail.com", password: "123456")
# userthree = User.create!(first_name: "S", last_name: "Piccolo", email: "simone@gmail.com", password: "123456")
# user_photos = ['jpeg']

require "open-uri"

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg')
article = Article.new(title: 'NES', body: "A great console")
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
article.save

sam_smith = User.new(
  first_name: "Sam",
  last_name: "Smith",
  password: "123456",
  email: "samsmith@gmail.com",

)
sam_smith.save
# password: "password",
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     location: Faker::Address.full_address,
#     latitude: Faker::Address.latitude,
#     longitude: Faker::Address.longitude,
#     availability: false
#   )

# Alex John = User.new(name: "Alex_John")
# Alex_John.save

# Charlie Pink = User.new(name: "Charlie_Pink")
# Charlie_Pink.save

# Rory North = User.new(name: "Rory_North")
# Rory_North.save

# Morgan Gray = User.new(name: "Morgan_Gray")
# Morgan_Gray.save

# Quinn Lee = User.new(name: "Quinn_Lee")
# Quinn_Lee.save

# Robin Bird = User.new(name: "Robin_Bird")
# Robin_Bird.save

# Rowann Bush = User.new(name: "Rowann_Bush")
# Rowann_Bush.save

# Kelly Britton = User.new(name: "Kelly_Britton")
# Kelly_Britton.save

# Cleo Smart = User.new(name: "Cleo_Smart")
# Cleo_Smart.save

# Jessie Johnson = User.new(name: "Jessie_Johnson")
# Jessie_Johnson.save

# Jackie Haruki = User.new(name: "Jackie_Haruki")
# Jackie_Haruki.save
