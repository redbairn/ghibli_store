class CreateCatalogCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :catalog_categories do |t|

      t.timestamps
    end
  end
end
