class Pizza < ApplicationRecord
  belongs_to :recipe
  belongs_to :crust
  has_many :order_items
end
