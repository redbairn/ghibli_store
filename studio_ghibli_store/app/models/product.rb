class Product < ApplicationRecord
    has_one :order_item
    has_one :supplier
    belongs_to :catalog_category
end
