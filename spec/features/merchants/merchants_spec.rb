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

RSpec.describe "merchant page", type: :feature do
  it "can see link for new merchant" do
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
  click_link "New Merchant"
  expect(current_path).to eq("/merchants/new")
  fill_in "Name", with: "Cats and Stuff"
  fill_in "Address", with: "34543 Something St."
  fill_in "City", with: "Boulder"
  fill_in "State", with: "CO"
  fill_in "Zip", with: "80302"
  click_button "Create Merchant"

  expect(current_path).to eq("/merchants")
  expect(page).to have_content("Cats and Stuff")
  end
end

RSpec.describe "merchant show page", type: :feature do
  it "can see link for update merchant" do
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
  click_link "Update Merchant"
  expect(current_path).to eq("/merchants/#{merchant_1.id}/edit")
  fill_in "Name", with: "Garden Center"
  fill_in "Address", with: "23433 Pearl Parkway"
  fill_in "City", with: "Boulder"
  fill_in "State", with: "CO"
  fill_in "Zip", with: "80304"
  click_button "Update"

  expect(current_path).to eq("/merchants/#{merchant_1.id}")
  expect(page).to have_content("Garden Center")
  expect(page).to have_content("23433 Pearl Parkway")
  expect(page).to have_content("80304")
  end
end

RSpec.describe "merchant show page", type: :feature do
  it "can see link for delete merchant" do
    merchant_1 = Merchant.create(name: "Seeds and Flowers",
                                 address: "1234 Mountain Rd",
                                 city:  "Boulder",
                                 state: "CO",
                                 zip: 80302)
    merchant_2 = Merchant.create(name: "Everything Dogs",
                                 address: "5678 Lake Dr",
                                 city:  "Boulder",
                                 state: "CO",
                                 zip: 80304)

  visit "/merchants/#{merchant_1.id}"
  click_button "Delete Merchant"
  expect(current_path).to eq('/merchants')
  expect(page).to_not have_content ('Seeds and Flowers')
  expect(page).to_not have_content ('80302')
  end
end
