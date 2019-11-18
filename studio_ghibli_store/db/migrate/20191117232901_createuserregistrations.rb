class Createuserregistrations < ActiveRecord::Migration[5.0]
  def up
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
    add_index :user_registrations, :user_id
  end
  def down
    drop_table :user_registrations
  end
end
