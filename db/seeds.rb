# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

merchant_1 = Merchant.create({name: "Seeds and Flowers",
                             address: "1234 Mountain Rd",
                             city:  "Boulder",
                             state: "CO",
                             zip: 80304})
merchant_2 = Merchant.create({name: "Everything Dogs",
                             address: "5678 Lake Dr",
                             city:  "Boulder",
                             state: "CO",
                             zip: 80304})
item_1 = Item.create(name: "Colorado High Country Wildflowers",
                    description: "An assortment of wildflower seeds that can grow in the high country",
                    price: 14.99,
                    image: "",
                    status: "active",
                    inventory: 25,
                    name_of_merchant: "Seeds and Flowers")
item_2 = Item.create(name: "Organic Planting Soil",
                    description: "For fruit and vegetable gardening",
                    price: 19.99,
                    image: "",
                    status: "active",
                    inventory: 15,
                    name_of_merchant: "Seeds and Flowers")
item_3 = Item.create(name: "Blue Diamond Dry",
                    description: "No grain, organic, dog food",
                    price: 64.99,
                    image: "",
                    status: "active",
                    inventory: 20,
                    name_of_merchant: "Everything Dogs")
item_4 = Item.create(name: "Blue Diamon Collar",
                    description: "Dog collar",
                    price: 19.99,
                    image: "",
                    status: "active",
                    inventory: 10,
                    name_of_merchant: "Everything Dogs")
