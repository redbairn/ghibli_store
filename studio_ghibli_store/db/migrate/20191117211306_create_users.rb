class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|
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
  end
  
  def down
   drop_table :users
  end
end
