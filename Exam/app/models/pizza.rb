class Pizza < ApplicationRecord
  belongs_to :recipe
  belongs_to :crust
end
