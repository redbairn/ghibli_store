class ChangeOrderItemsToOrderitems < ActiveRecord::Migration[5.2]
  def change
    rename_table :order_items, :orderitems
  end
end
