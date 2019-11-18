class CreateRoles < ActiveRecord::Migration[5.0]
  def down
    drop_table :roles
  end
  def up
    create_table :roles do |t|
      t.string "title", :limit => 50
      t.integer "user_id"
      t.timestamps
    end
    add_index :roles, :user_id
  end

end
