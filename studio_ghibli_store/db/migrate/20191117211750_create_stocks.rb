class CreateStocks < ActiveRecord::Migration[5.0]
  def up
    create_table :stocks do |t|
      t.integer "order_items_id"
      t.string "title", :limit => 50
      t.decimal "cost_price", :precision => 8, :scale => 2
      t.timestamps
    end
    add_index :stocks, :order_items_id
  end
  
  def down
    drop_table :stocks
  end
end
