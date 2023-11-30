class LineItem < ApplicationRecord

  belongs_to :order
  belongs_to :product

  monetize :item_price_cents, numericality: true
  monetize :total_price_cents, numericality: true

  def total_price
    item_price * quantity
  end

end
