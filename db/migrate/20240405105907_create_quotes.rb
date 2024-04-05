# frozen_string_literal: true

# Description: This migration creates the quotes table.
class CreateQuotes < ActiveRecord::Migration[7.1]
  def change
    create_table :quotes do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
