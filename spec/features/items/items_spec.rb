require 'rails_helper'

RSpec.describe "items index page", type: :feature do
  it "can see each item" do
    item_1 = Item.create(name: "Colorado High Country Wildflowers",
                         description: "An assortment of wildflower seeds that can grow in the high country",
                         price: 14.99,
                         image: "",
                         status: "active",
                         inventory: 25,
                         name_of_merchant: "Seeds and Flowers")
  visit "/items"

  expect(page).to have_content(item_1.name)
  expect(page).to have_content(item_1.price)
  expect(page).to have_content(item_1.name_of_merchant)
  end
end
