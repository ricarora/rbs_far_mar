# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



(1..10).each do
  market = {
    name: Faker::Address.city + " Farmer's Market",
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: "WA",
    county: "King",
    zip: Faker::Address.zip
  }

  Market.create(market)
end

(1..100).each do

  name = Faker::Company.name
  username = /[a-z]+/.match(name.downcase)[0]
  vendor = {
  name: name,
  no_of_employees: rand(1..10),
  market_id: rand(1..3),
  username: username,
  password: username.reverse}

  Vendor.create(vendor)
end

(1..1000).each do

  name = Faker::Commerce.product_name
  product = {
    name: name,
    vendor_id: rand(1..100

    )
  }

  Product.create(product)

end
