class OrderItem < ApplicationRecord
    belongs_to :order
    has_many :stock
end
