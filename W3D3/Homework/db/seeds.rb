# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
station_house = House.create(address: "138 Station Ave")
san_jose_house = House.create(address: "4663 La Crescent Loop")
 
Human.create(name:'eric', house_id:station_house.id)
 Human.create(name:'molly', house_id:station_house.id)
 Human.create(name:'jordan', house_id:station_house.id) 
 Human.create(name:'alan', house_id:san_jose_house.id)
 Human.create(name:'cindy', house_id:san_jose_house.id)
 Human.create(name:'kelvin', house_id:san_jose_house.id)
 Human.create(name:'emily', house_id:san_jose_house.id)
