# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.text :address
      t.string :street
      t.string :apt
      t.string :building
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
