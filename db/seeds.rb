# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

merchant_1 = Merchant.create({name: "Seeds and Flowers"})
                             # address: "1234 Mountain Rd",
                             # city:  "Boulder",
                             # state: "CO",
                             # zip: 80304})
merchant_2 = Merchant.create({name: "Everything Dogs"})
#                              address: "5678 Lake Dr",
#                              city:  "Boulder",
#                              state: "CO",
#                              zip: 80304})
