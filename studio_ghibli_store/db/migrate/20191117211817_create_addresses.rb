class CreateAddresses < ActiveRecord::Migration[5.0]
  def up
    create_table :addresses do |t|
      t.integer "user_id"
      t.string "addressLine1", :limit => 50
      t.string "addressLine2", :limit => 50
      t.string "addressLine3", :limit => 50
      t.string "county", :limit => 50
      t.string "eircode", :limit => 50
      t.timestamps
    end
     add_index :addresses, :user_id
  end
  
  def down
    drop_table :addresses
  end
end
