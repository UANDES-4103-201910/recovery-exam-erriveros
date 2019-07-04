class OrderItem < ApplicationRecord
  belongs_to :pizza
  belongs_to :order

  before_save :set_unit_price
  before_save :set_total


  def unit_price
    pizza.recipe.price + pizza.crust.price
  end


  def total
    unit_price * quantity
  end


  private

  def set_unit_price
    self[:unit_price] = unit_price
  end

  def set_total
    self[:total] = total * quantity
  end
end
