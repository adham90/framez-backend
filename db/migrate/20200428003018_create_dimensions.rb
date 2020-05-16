# frozen_string_literal: true

class CreateDimensions < ActiveRecord::Migration[6.0]
  def change
    create_table :dimensions do |t|
      t.float :width
      t.float :height
      t.float :ratio
    end
  end
end
