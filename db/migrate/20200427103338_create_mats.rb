# frozen_string_literal: true

class CreateMats < ActiveRecord::Migration[6.0]
  def change
    create_table :mats do |t|
      t.string :name
      t.string :fill_color
      t.string :border_color
      t.string :img_url
      t.float :paddings, array: true, default: []

      t.timestamps
    end
  end
end
