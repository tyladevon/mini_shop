require 'rails_helper'

RSpec.describe "items index page", type: :feature do
  it "can see each item" do
    merchant_1 = Merchant.create!({name: "Seeds and Flowers",
                                  address: "1234 Mountain Rd",
                                  city:  "Boulder",
                                  state: "CO",
                                  zip: 80304})

    item_1 = Item.create!({name: "Colorado High Country Wildflowers",
                         description: "An assortment of wildflower seeds that can grow in the high country",
                         price: 14.99,
                         image: "image",
                         status: "active",
                         inventory: 25,
                         name_of_merchant: "Seeds and Flowers",
                         merchant_id: merchant_1.id})
  visit '/items'

  expect(page).to have_content(item_1.name)
  expect(page).to have_content(item_1.price)
  expect(page).to have_content(item_1.name_of_merchant)
  end
end

RSpec.describe "merchant page", type: :feature do
  it "can see each item for merchant" do

    merchant_1 = Merchant.create!(name: "Seeds and Flowers",
                                 address: "1234 Mountain Rd",
                                 city:  "Boulder",
                                 state: "CO",
                                 zip: 80304)

    merchant_2 = Merchant.create!({name: "Everything Dogs",
                                address: "5678 Lake Dr",
                                city:  "Boulder",
                                state: "CO",
                                zip: 80304})

    item_1 = Item.create!(name: "Colorado High Country Wildflowers",
                         description: "An assortment of wildflower seeds that can grow in the high country",
                         price: 14.99,
                         image: "image",
                         status: "active",
                         inventory: 25,
                         name_of_merchant: "Seeds and Flowers",
                         merchant_id: merchant_1.id)

    item_2 = Item.create!(name: "Organic Planting Soil",
                       description: "For fruit and vegetable gardening",
                       price: 19.99,
                       image: "image",
                       status: "active",
                       inventory: 15,
                       name_of_merchant: "Seeds and Flowers",
                       merchant_id: merchant_2.id)


  visit "/merchants/#{merchant_1.id}/items"

  expect(page).to have_content(merchant_1.name)
  expect(page).to have_content(item_1.price)
  expect(page).to have_content(item_1.status)
  expect(page).to have_content(item_1.inventory)
  end
end
