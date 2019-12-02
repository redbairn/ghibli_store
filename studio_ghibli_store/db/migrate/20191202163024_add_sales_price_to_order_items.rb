class AddSalesPriceToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_column :orderitems, :cost_price, :decimal, :precision => 8, :scale => 2
  end
end
