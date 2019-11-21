class CreateOrderItems < ActiveRecord::Migration[5.0]
  def up
    create_table :order_items do |t|
      t.integer "order_id"
      t.integer "product_id"
      t.bigint "qty", :limit => 10
      t.decimal "sale_price", :precision => 8, :scale => 2
      t.timestamps
    end
     add_index :order_items, :order_id
     add_index :order_items, :product_id
  end
  
  def down
    drop_table :order_items
  end
end
