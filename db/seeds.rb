require "faker"

20.times do
  User.create!(
    password: "password",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    location: Faker::Address.full_address,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    availability: [true, false].sample
  )
end

puts "seeds created"
