class Cart < ApplicationRecord
  has_many :orderables
  has_many :products, through: :orderables
  has_many :payments

  def total
    orderables.to_a.sum(&:total)
  end
end
