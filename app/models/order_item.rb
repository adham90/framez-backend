# frozen_string_literal: true

class OrderItem < ApplicationRecord
  monetize :price_cents

  belongs_to :order
  belongs_to :mat, required: false
  belongs_to :border
  belongs_to :dimension

  def total
    Money.new(mat_price + border_price)
  end

  def mat_price
    mat.price_for(dimension.id)
  end

  def border_price
    border.price_for(dimension.id)
  end
end
