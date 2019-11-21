class CreateCatalogCategories < ActiveRecord::Migration[5.0]
  def up
    create_table :catalog_categories do |t|
      t.string "title", :limit => 50
      t.timestamps
    end
  end
  
  def down
    drop_table :catalog_categories
  end
end
