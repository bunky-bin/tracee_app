# require "open-uri"
file = URI.open('https://res.cloudinary.com/bunkyboy/image/upload/v1655234483/Seeds/seed14_plw7o9.jpg')

sam_smith = User.new(
  first_name: "Sam",
  last_name: "Smith",
  password: "123456",
  email: "samsmith@gmail.com",
  bio: "Music specialist. Reader. Hipster-friendly troublemaker. Incurable zombie expert. Freelance web fanatic.",
  location: "59 St. John’s Road London N13 8DS",
  availability: [true, false].sample
)
sam_smith.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
sam_smith.save!

puts "user 1 created"

file = URI.open('https://res.cloudinary.com/bunkyboy/image/upload/v1655233571/Seeds/seed11_f98ock.jpg')


alex_john = User.new(
  first_name: "Alex",
  last_name: "John",
  password: "123456",
  email: "alexjohn@gmail.com",
  bio: "Explorer. Tvaholic. Friend of animals everywhere. Alcohol expert. Writer. Coffee nerd. Entrepreneur.",
  location: "54 Park Road London E30 2DB",
  availability: [true, false].sample
)
alex_john.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
alex_john.save!

puts "user 2 created"

file = URI.open('https://res.cloudinary.com/bunkyboy/image/upload/v1655234483/Seeds/seed16_msbyhf.jpg')

charlie_pink = User.new(
  first_name: "Charlie",
  last_name: "Pink",
  password: "123456",
  email: "charliepink@gmail.com",
  bio: "Work in the local coffee shop",
  location: "45 George Street London E16 5GU",
  availability: [true, false].sample
)
charlie_pink.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
charlie_pink.save!

puts "user 3 created"

file = URI.open('https://res.cloudinary.com/bunkyboy/image/upload/v1655234482/Seeds/seed15_lvbcbm.jpg')

rory_north = User.new(
  first_name: "Rory",
  last_name: "North",
  password: "123456",
  email: "rorynorth@gmail.com",
  bio: "Local cabbie 24/7",
  location: "10 Whiston Rd, London E2 8FX",
  availability: [true, false].sample
)
rory_north.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
rory_north.save!

puts "user 4 created"

file = URI.open('https://res.cloudinary.com/bunkyboy/image/upload/v1655234482/Seeds/seed13_gzhloj.jpg')

morgan_gray = User.new(
  first_name: "Morgan",
  last_name: "Gray",
  password: "123456",
  email: "morgangray@gmail.com",
  bio: "Lived in this neighbourhood all my life, I know everyone!",
  location: "59 Virginia Rd, London E2 7NF",
  availability: [true, false].sample
)
morgan_gray.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
morgan_gray.save!

puts "user 5 created"

file = URI.open('https://res.cloudinary.com/bunkyboy/image/upload/v1655233570/Seeds/seed10_ofqogz.jpg')

quinn_lee = User.new(
  first_name: "Quinn",
  last_name: "Lee",
  password: "123456",
  email: "quinnlee@gmail.com",
  bio: "Travel practitioner. Music maven. Professional problem solver. Web fanatic. Communicator. Twitter lover. Proud coffee specialist.",
  location: "2 Purcell St, London N1 6RD",
  availability: [true, false].sample
)
quinn_lee.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
quinn_lee.save!

puts "user 6 created"

file = URI.open('https://res.cloudinary.com/bunkyboy/image/upload/v1655233569/Seeds/seed1_hc6ftn.jpg')

robin_bird = User.new(
  first_name: "Robin",
  last_name: "Bird",
  password: "123456",
  email: "robinbird@gmail.com",
  bio: "Knitting or bird watching otherwise out walking",
  location: "18 Victoria Park Square, Bethnal Green, London E2 9PF",
  availability: [true, false].sample
)
robin_bird.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
robin_bird.save!

puts "user 7 created"

file = URI.open('https://res.cloudinary.com/bunkyboy/image/upload/v1655233569/Seeds/seed3_kdqt3i.jpg')

kelly_britton = User.new(
  first_name: "Kelly",
  last_name: "Britton",
  password: "123456",
  email: "kellybritton@gmail.com",
  bio: "Retired local copper I miss the beat, so always out on a stroll",
  location: "32 Cowper St, London EC2A 4AP",
  availability: [true, false].sample
)
kelly_britton.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
kelly_britton.save!

puts "user 8 created"

file = URI.open('https://res.cloudinary.com/bunkyboy/image/upload/v1655233569/Seeds/seed6_zj7bx5.jpg')

cleo_smart = User.new(
  first_name: "Cleo",
  last_name: "Smart",
  password: "123456",
  email: "cleosmart@gmail.com",
  bio: "Retired maths teacher",
  location: "16 New St, London EC2M 4TR",
  availability: [true, false].sample
)
cleo_smart.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
cleo_smart.save!

puts "user 9 created"

file = URI.open('https://res.cloudinary.com/bunkyboy/image/upload/v1655233569/Seeds/seed4_uaimkh.jpg')

jessie_johnson = User.new(
  first_name: "Jessie",
  last_name: "Johnson",
  password: "123456",
  email: "jessiejohnson@gmail.com",
  bio: "Brought up ten children, and lucky to have twenty five grandchildren",
  location: "336 Acton Mews, London E8 4EA",
  availability: [true, false].sample
)
jessie_johnson.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
jessie_johnson.save!

puts "user 10 created"

file = URI.open('https://res.cloudinary.com/bunkyboy/image/upload/v1655233569/Seeds/seed5_xb4e2h.jpg')

jackie_haruki = User.new(
  first_name: "Jackie",
  last_name: "Haruki",
  password: "123456",
  email: "jackieharuki@gmail.com",
  bio: "Own the local sushi bar. Extreme beer ninja. Unapologetic music nerd. Introvert. Problem solver. Hardcore pop culture maven.",
  location: "135 Cannon Street Road, London E1 2LX",
  availability: [true, false].sample
)
jackie_haruki.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
jackie_haruki.save!

puts "user 11 created"

file = URI.open('https://res.cloudinary.com/bunkyboy/image/upload/v1655233570/Seeds/seed7_z3kwbh.jpg')

george_benson = User.new(
  first_name: "George",
  last_name: "Benson",
  password: "123456",
  email: "georgebenson@gmail.com",
  bio: "Living the London life. Zombie trailblazer. Unapologetic tv fanatic. Music practitioner. Lifelong twitter fan. Professional social media geek.",
  location: "603 Harrow Road, Wembley HA0 2HH",
  availability: [true, false].sample
)
george_benson.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
george_benson.save!

puts "user 12 created"

file = URI.open('https://res.cloudinary.com/bunkyboy/image/upload/v1655233570/Seeds/seed8_jmb7c8.jpg')

chris_reeves = User.new(
  first_name: "Chris",
  last_name: "Reeves",
  password: "123456",
  email: "chrisreeves@gmail.com",
  bio: "Aim to be a hero everyday",
  location: "1 Lupus street, Pimlico, London SW1V 3EY",
  availability: [true, false].sample
)
chris_reeves.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
chris_reeves.save!

puts "user 13 created"

file = URI.open('https://res.cloudinary.com/bunkyboy/image/upload/v1655233569/Seeds/seed5_xb4e2h.jpg')

don_vito_corleone = User.new(
  first_name: "DonVito",
  last_name: "Corleone",
  password: "123456",
  email: "donvitocorleone@gmail.com",
  bio: "Manage local family businesses",
  location: "4 Back Hill, London EC1R 5EN",
  availability: [true, false].sample
)
don_vito_corleone.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
don_vito_corleone.save!

puts "user 14 created"

file = URI.open('https://res.cloudinary.com/bunkyboy/image/upload/v1655233569/Seeds/seed2_bkldju.jpg')

diana_prince = User.new(
  first_name: "Diana",
  last_name: "Prince",
  password: "123456",
  email: "dianaprince@gmail.com",
  bio: "If I am not in London, I am in the Amazons",
  location: "1 Coram Street, London WC1N 1HE",
  availability: [true, false].sample
)
diana_prince.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
diana_prince.save!

puts "user 15 created"

file = URI.open('https://res.cloudinary.com/bunkyboy/image/upload/v1655233569/Seeds/seed3_kdqt3i.jpg')

kamala_khan = User.new(
  first_name: "Kamala",
  last_name: "Khan",
  password: "123456",
  email: "kamalkhan@gmail.com",
  bio: "Originally from New Jersey USA, London is a marvelous city to live in",
  location: "135 Cannon Street Road, London E1 2LX",
  availability: [true, false].sample
)
kamala_khan.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
kamala_khan.save!

puts "user 16 created"

file = URI.open('https://res.cloudinary.com/bunkyboy/image/upload/v1655233569/Seeds/seed6_zj7bx5.jpg')

gwen_stacey = User.new(
  first_name: "Gwen",
  last_name: "Stacey",
  password: "123456",
  email: "gwenstacey@gmail.com",
  bio: "I am an arachnologist, spiders are often charismatic and intruiging, I am one of the few scientists in this field.",
  location: "2 Keppel Street, London WC1E 7HT",
  availability: [true, false].sample
)
gwen_stacey.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
gwen_stacey.save!

puts "seeds created"


