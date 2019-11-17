class CreateUserRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :user_registrations do |t|

      t.timestamps
    end
  end
end
