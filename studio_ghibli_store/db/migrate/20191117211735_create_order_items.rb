class CreateOrderItems < ActiveRecord::Migration[5.0]
  def change
    create_table :order_items do |t|

      t.timestamps
    end
  end
end
