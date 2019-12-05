class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :colour
      t.decimal :cost_price, precision: 7, scale: 2
      t.string :image_url
      t.integer :categories_id
      t.integer :supplier_id

      t.timestamps
    end
    add_index :products, :categories_id
    add_index :products, :supplier_id
  end
end
