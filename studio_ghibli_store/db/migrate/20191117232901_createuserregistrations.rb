class Createuserregistrations < ActiveRecord::Migration[5.0]
  def change
  end
  def down
   drop_table :user_registrations
  end
end
