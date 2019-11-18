class CreateOrderItems < ActiveRecord::Migration[5.0]
  def up
    create_table :order_items do |t|
      t.integer "order_id"
      t.string "name", :limit => 50
      t.string "sku", :limit => 50
      t.bigint "qty_sold", :limit => 10
      t.decimal "sale_price", :precision => 8, :scale => 2
      t.timestamps
    end
     add_index :order_items, :order_id
  end
  
  def down
    drop_table :order_items
  end
end
