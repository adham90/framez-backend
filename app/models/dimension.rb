# frozen_string_literal: true

class Dimension < ApplicationRecord
  has_many :dimensionals
  has_many :borders, through: :dimensionals, source_type: 'Border', source: :klass
  has_many :mats, through: :dimensionals, source_type: 'Mat', source: :klass
  has_many :order_items

  before_save :set_ratio

  private

  def set_ratio
    ratio = width / height
  end
end
