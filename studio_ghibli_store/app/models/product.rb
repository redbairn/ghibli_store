class Product < ApplicationRecord
    belongs_to :order_item
    has_one :supplier
    has_one :catalog_category
end
