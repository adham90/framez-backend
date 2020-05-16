# frozen_string_literal: true

class Border < ApplicationRecord
  include Dimensionable

  has_many :order_items
end
