class Item < ApplicationRecord
  validates_presence_of :name, :description, :price, :image, :status, :inventory, :name_of_merchant
  belongs_to :merchant
end
