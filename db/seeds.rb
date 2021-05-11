puts "Creating 100 restaurants..."

100.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    rating: rand(1..5)
  )
end

puts "All done!"
