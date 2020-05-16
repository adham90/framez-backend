# frozen_string_literal: true

class CreateDimensionals < ActiveRecord::Migration[6.0]
  def change
    create_table :dimensionals do |t|
      t.references :klass, polymorphic: true, null: false
      t.references :dimension, null: false, foreign_key: true
      t.monetize :price

      t.timestamps
    end
  end
end
