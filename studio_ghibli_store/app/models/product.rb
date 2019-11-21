class Product < ApplicationRecord
    has_one :order_item
    belongs_to :supplier
    belongs_to :catalog_category
end
