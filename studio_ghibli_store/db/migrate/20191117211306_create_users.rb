class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|
      t.timestamps
    end
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
     create_table :roles do |t|
      t.string "title", :limit => 50
      t.integer "user_id"
      t.timestamps
    end
    create_table :orders do |t|
      t.integer "user_id"
      t.timestamps
    end
    create_table :user_registrations do |t|
      
      t.integer "user_id"
      t.string "first_name", :limit => 50
      t.string "last_name", :limit => 50
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 40
      t.bigint "mobile_number", :limit => 15
      t.bigint "phone_number", :limit => 15

      t.timestamps
    end
    add_index :user_details, :user_id
    add_index :roles, :user_id
    add_index :orders, :user_id
    add_index :user_registrations, :user_id
  end
  def down
   drop_table :users
  end
  
end
