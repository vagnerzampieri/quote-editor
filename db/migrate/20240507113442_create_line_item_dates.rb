class CreateLineItemDates < ActiveRecord::Migration[7.1]
  def change
    create_table :line_item_dates do |t|
      t.references :quote, null: false, foreign_key: true
      t.date :date, null: false

      t.timestamps
    end
  end
end
