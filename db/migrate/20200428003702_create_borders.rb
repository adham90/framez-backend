# frozen_string_literal: true

class CreateBorders < ActiveRecord::Migration[6.0]
  def change
    create_table :borders do |t|
      t.string :name
      t.string :img_url
      t.string :color

      t.timestamps
    end
  end
end
