class CreateCategories < ActiveRecord::Migration[5.0]
  def up
    create_table :categories do |t|
      t.string "title", :limit => 50
      t.text "description", :limit => 50
      t.string "image"
      t.timestamps
    end
  end
  
  def down
    drop_table :categories
  end
end
