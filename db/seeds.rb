puts 'Cleaning out the DB...'
Restaurant.destroy_all

puts 'creating restaurants...'

10.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: Restaurant::CATEGORIES.sample
  )
end

puts "Created #{Restaurant.count} restaurants"
