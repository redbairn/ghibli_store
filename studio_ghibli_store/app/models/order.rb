class Order < ApplicationRecord
    belongs_to :users
    has_many :orderitems
    
    def order_params
     params.require(:order).permit( :order_date, :user_id, :status)
    end
end
