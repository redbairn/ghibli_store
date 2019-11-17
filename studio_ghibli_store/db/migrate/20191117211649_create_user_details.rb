class CreateUserDetails < ActiveRecord::Migration[5.0]
  def up
    create_table :user_details do |t|
      
      t.string "first_name", :limit => 50
      t.string "last_name", :limit => 50
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 40
      t.integer "mobile_number", :limit => 15
      t.integer "phone_number", :limit => 15

      t.timestamps
    end
  end
  
  def down
    drop_table :user_details
  end

end
