
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

file = URI.open('https://t4.ftcdn.net/jpg/02/61/68/85/240_F_261688519_Dapj0DMehyGFRInEK3eGFzYBkZ5g27D6.jpg')
# article = Article.new(title: 'NES', body: "A great console") sam-smith


sam_smith = User.new(
  first_name: "Sam",
  last_name: "Smith",
  password: "123456",
  email: "samsmith@gmail.com",
  bio: "Love singing",
  location: "225 Kingsland Road, London E2 8AN",
# latitude: 0.0772 W,
# longitude: 51.5346,
  availability: true
)
sam_smith.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
sam_smith.save!

file = URI.open('https://images.freeimages.com/images/large-previews/944/portrait-1623895.jpg')
# article = Article.new(title: 'NES', body: "A great console") sam-smith
#

alex_john = User.new(
  first_name: "Alex",
  last_name: "John",
  password: "123456",
  email: "alexjohn@gmail.com",
  bio: "Always out walking the dogs",
  location: "Reliance Wharf, Unit Y, 2 Hertford Road, London N1 5ET",
  # latitude: 0.0742 W,
  # longitude: 51.5458 N,
  availability: false
)
alex_john.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
alex_john.save!

file = URI.open('https://images.freeimages.com/images/large-previews/f3f/portrait-1438907.jpg')
# article = Article.new(title: 'NES', body: "A great console") sam-smith
#

charlie_pink = User.new(
  first_name: "Charlie",
  last_name: "Pink",
  password: "123456",
  email: "charliepink@gmail.com",
  bio: "work in the local coffee shop",
  location: "470 Kingsland Road, London E8 4AE",
  # latitude: 0.0759 W,
  # longitude: 51.5431 N,
  availability: false
)
charlie_pink.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
charlie_pink.save!

file = URI.open('https://pixy.org/src/11/thumbs350/118458.jpg')
# article = Article.new(title: 'NES', body: "A great console") sam-smith
#

rory_north = User.new(
  first_name: "Rory",
  last_name: "North",
  password: "123456",
  email: "rorynorth@gmail.com",
  bio: "Local cabbie 24/7",
  location: "7 Enfield Road, London N1 5EN",
  # latitude: 0.0774 W,
  # longitude: 51.5397 N,
  availability: true
)
rory_north.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
rory_north.save!

file = URI.open('https://i.huffpost.com/gen/1364522/thumbs/o-MICHAEL-PHARAOH-900.jpg?6')
# article = Article.new(title: 'NES', body: "A great console") sam-smith
#

morgan_gray = User.new(
  first_name: "Morgan",
  last_name: "Gray",
  password: "123456",
  email: "morgangray@gmail.com",
  bio: "Lived in this neighbourhood all my life I know everyone!",
  location: "Haggerston community centre, Scriven Street Near, London E8 4LE",
  # latitude: 0.0713 W,
  # longitude: 51.5379 N,
  availability: false
)
morgan_gray.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
morgan_gray.save!

file = URI.open('https://jooinn.com/images/a-beautiful-young-business-woman-14.jpg')
# article = Article.new(title: 'NES', body: "A great console") sam-smith
#

quinn_lee = User.new(
  first_name: "Quinn",
  last_name: "Lee",
  password: "123456",
  email: "quinnlee@gmail.com",
  bio: "Baking cakes or out walking",
  location: "277 Hackney Road, London E2 8NA",
  # latitude: 0.0774 W,
  # longitude: 51.5397 N,
  availability: false
)
quinn_lee.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
quinn_lee.save!

file = URI.open('https://live.staticflickr.com/5204/5248278252_7bed0d3ebe_b.jpg')
# article = Article.new(title: 'NES', body: "A great console") sam-smith
#

robin_bird = User.new(
  first_name: "Robin",
  last_name: "Bird",
  password: "123456",
  email: "robinbird@gmail.com",
  bio: "Knitting or bird watching otherwise out walking",
  location: "520 Kingsland Road, London E8 4AH",
  availability: false
)
robin_bird.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
robin_bird.save!

file = URI.open('https://i.pinimg.com/originals/44/f6/22/44f622710b29893e0a310608443560da.jpg')
# article = Article.new(title: 'NES', body: "A great console") sam-smith

rowann_bush = User.new(
  first_name: "Rowann",
  last_name: "Bush",
  password: "123456",
  email: "rowannbush@gmail.com",
  bio: "Run my own business from home making Xmas decorations",
  location: "St Leonard Church, Shoreditch High Street, London E1 6JN",
  availability: true
)
rowann_bush.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
rowann_bush.save!

file = URI.open('https://live.staticflickr.com/3800/10923845106_6192539e42_z.jpg')
# article = Article.new(title: 'NES', body: "A great console") sam-smith


kelly_britton = User.new(
  first_name: "Kelly",
  last_name: "Britton",
  password: "123456",
  email: "kellybritton@gmail.com",
  bio: "Retired local copper I miss the beat, so always out on a stroll",
  location: "17B Kingsland Road, London E2 8AA",
  # latitude: 0.0781 W,
  # longitude: 51.5287 N,
  availability: true
)
kelly_britton.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
kelly_britton.save!

file = URI.open('https://digital-photography-school.com/wp-content/uploads/2008/07/portrait-background.jpg')
# article = Article.new(title: 'NES', body: "A great console") sam-smith


cleo_smart = User.new(
  first_name: "Cleo",
  last_name: "Smart",
  password: "123456",
  email: "cleosmart@gmail.com",
  bio: "Retired maths teacher",
  location: "Shoreditch Stables, North, 138 Kingsland Road, London E2 8DY",
  # latitude: 0.0769 W,
  # longitude: 51.5328 N,
  availability: true
)
cleo_smart.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
cleo_smart.save!

file = URI.open('https://live.staticflickr.com/7505/16155321812_98d2a992f8_b.jpg')
# article = Article.new(title: 'NES', body: "A great console") sam-smith


jessie_johnson = User.new(
  first_name: "Jessie",
  last_name: "Johnson",
  password: "123456",
  email: "jessiejohnson@gmail.com",
  bio: "Brought up ten children, and lucky to have twenty five grandchildren",
  location: "Pelter Street, London E2 7PE",
  availability: true
)
jessie_johnson.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
jessie_johnson.save!

file = URI.open('https://live.staticflickr.com/7454/13876667675_ab398a1c8e.jpg')
# article = Article.new(title: 'NES', body: "A great console") sam-smith


jackie_haruki = User.new(
  first_name: "Jackie",
  last_name: "Haruki",
  password: "123456",
  email: "jackieharuki@gmail.com",
  bio: "Own the local sushi bar",
  location: "106 Hoxton Street, London N1 6SG",
  availability: false
)
jackie_haruki.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
jackie_haruki.save!
puts "seeds created"
