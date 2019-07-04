class Recipe < ApplicationRecord
  has_many :pizzas
  has_many :recipe_ingredients
end
