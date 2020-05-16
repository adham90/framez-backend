# frozen_string_literal: true

module Dimensionable
  extend ActiveSupport::Concern

  included do
    has_many :dimensionals, as: :klass
    has_many :dimensions, through: :dimensionals

    def price_for(dimension_id)
      dimensionals.find_by(dimension_id: dimension_id)&.price || Money.new(0)
    end
  end
end
