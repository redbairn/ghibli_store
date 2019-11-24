class Product < ApplicationRecord
    has_one :order_item
    belongs_to :supplier, :optional => true
    belongs_to :catalog_category, :optional => true
end
