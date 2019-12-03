class Order < ApplicationRecord
    belongs_to :user
    has_many :orderitems
    has_many :products, through: :order_items
    
    def order_params
     params.require(:order).permit( :order_date, :user_id, :status)
    end
end
