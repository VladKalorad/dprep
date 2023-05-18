class Orderable < ApplicationRecord
  belongs_to :product, touch: true
  belongs_to :cart, touch: true

  def total
    product.price * quantity
  end
end
