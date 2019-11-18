class CreateLogins < ActiveRecord::Migration[5.0]
  def up
    create_table :logins do |t|
      t.integer "user_id"
      t.integer "logged_in", :limit => 1 #tinyint
      t.string "ip_address", :limit => 255
      t.string "user_agent", :limit => 255
      t.datetime "logged_out_at", null: false
      t.string "logged_out_reason", :limit => 255
      t.string "user_agent", :limit => 255
      t.timestamps
    end
    add_index :logins, :user_id
  end
  def down
    drop_table :logins
  end
end
