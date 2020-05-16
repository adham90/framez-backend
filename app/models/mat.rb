# frozen_string_literal: true

class Mat < ApplicationRecord
  include Dimensionable

  has_many :order_items
end
