# frozen_string_literal: true

class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.references :border, null: false, foreign_key: true
      t.references :mat, null: true, foreign_key: true
      t.references :dimension, null: false, foreign_key: true

      t.references :order, null: false, foreign_key: true
      t.monetize :price

      t.timestamps
    end
  end
end
