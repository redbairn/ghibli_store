class AddOrderDateToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :order_date, :datetime
  end
end
