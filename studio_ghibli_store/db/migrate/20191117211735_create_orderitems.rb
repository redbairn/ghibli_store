class CreateOrderitems < ActiveRecord::Migration[5.0]
  def up
    create_table :orderitems do |t|
      t.integer "order_id"
      t.integer "product_id"
      t.string "title"
      t.text "description"
      t.bigint "quantity", :limit => 10
      t.decimal "cost_price", :precision => 8, :scale => 2
      t.decimal "sale_price", :precision => 8, :scale => 2
      t.timestamps
    end
     add_index :orderitems, :order_id
     add_index :orderitems, :product_id
  end
  
  def down
    drop_table :orderitems
  end
end

