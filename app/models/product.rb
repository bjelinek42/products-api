class Product < ApplicationRecord
  has_many :images

  def tax
    tax = subtotal * 0.09
    tax = tax.round(2)
  end

  def total
    total = subtotal + tax
  end
end
