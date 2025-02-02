class CreateOrders < ActiveRecord::Migration[5.0]
  def up
    create_table :orders do |t|
      t.integer "user_id"
      t.datetime :order_date
      t.string :status
      t.timestamps
    end
    add_index :orders, :user_id
  end
  
  def down
    drop_table :orders
  end
end
