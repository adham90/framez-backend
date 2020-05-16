# frozen_string_literal: true

class Dimensional < ApplicationRecord
  monetize :price_cents

  belongs_to :klass, polymorphic: true
  belongs_to :dimension
end
