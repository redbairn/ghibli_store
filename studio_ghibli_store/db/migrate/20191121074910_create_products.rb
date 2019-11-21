class CreateProducts < ActiveRecord::Migration[5.0]
  def up
    create_table :products do |t|
      t.integer "catalog_categories_id"
      t.integer "supplier_id"
      t.string "title", :limit => 50
      t.string "colour", :limit => 20
      t.decimal "cost_price", :precision => 8, :scale => 2
      t.timestamps
    end
    add_index :products, :catalog_categories_id
    add_index :products, :supplier_id
  end
  
    
  def down
    drop_table :products
  end
end
