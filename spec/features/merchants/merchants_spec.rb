require 'rails_helper'

RSpec.describe "merchants index page", type: :feature do
  it "can see all merchants" do
    merchant_1 = Merchant.create(name: "Seeds and Flowers",
                                 address: "1234 Mountain Rd",
                                 city:  "Boulder",
                                 state: "CO",
                                 zip: 80304)
    merchant_2 = Merchant.create(name: "Everything Dogs",
                                 address: "5678 Lake Dr",
                                 city:  "Boulder",
                                 state: "CO",
                                 zip: 80304)

  visit "/merchants"

  expect(page).to have_content(merchant_1.name)
  expect(page).to have_content(merchant_2.name)
  end
end

RSpec.describe "merchant page", type: :feature do
  it "can see merchant by id" do
    merchant_1 = Merchant.create(name: "Seeds and Flowers",
                                 address: "1234 Mountain Rd",
                                 city:  "Boulder",
                                 state: "CO",
                                 zip: 80304)
    merchant_2 = Merchant.create(name: "Everything Dogs",
                                 address: "5678 Lake Dr",
                                 city:  "Boulder",
                                 state: "CO",
                                 zip: 80304)

  visit "/merchants/#{merchant_1.id}"

  expect(page).to have_content(merchant_1.name)
  expect(page).to have_content(merchant_1.address)
  expect(page).to have_content(merchant_1.city)
  expect(page).to have_content(merchant_2.state)
  expect(page).to have_content(merchant_2.zip)
  end
end
