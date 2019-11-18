class CreateUserDetails < ActiveRecord::Migration[5.0]
  def up
    create_table :user_details do |t|
      t.integer "user_id"
      t.string "first_name", :limit => 50
      t.string "last_name", :limit => 50
      t.string "display_name", :limit => 255
      t.string "email", :default => '', :null => false
      t.string "encrypted_password", :limit => 40
      t.bigint "mobile_number", :limit => 15
      t.bigint "phone_number", :limit => 15
      t.integer "is_deleted", :limit => 2
      t.timestamps
    end
    add_index :user_details, :user_id
  end
  
  def down
    drop_table :user_details
  end
end
