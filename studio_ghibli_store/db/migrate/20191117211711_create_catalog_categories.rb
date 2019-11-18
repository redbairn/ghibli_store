class CreateCatalogCategories < ActiveRecord::Migration[5.0]
  def up
    create_table :catalog_categories do |t|
      t.integer "stock_id"
      t.string "title", :limit => 50
      t.timestamps
    end
    add_index :catalog_categories, :stock_id
  end
  
  def down
    drop_table :catalog_categories
  end
end
