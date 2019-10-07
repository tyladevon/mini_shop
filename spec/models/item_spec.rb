require 'rails_helper'
require 'shoulda/matchers'

describe Item, type: :model do

  describe "validation" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :description}
    it {should validate_presence_of :price}
    it {should validate_presence_of :image}
    it {should validate_presence_of :status}
    it {should validate_presence_of :inventory}
    it {should validate_presence_of :name_of_merchant}
  end

  describe "relationships" do
    it {should belong_to :merchant}
  end
end
