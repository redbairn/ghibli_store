json.extract! product, :id, :title, :description, :colour, :cost_price, :image_url, :catalog_categories_id, :supplier_id, :created_at, :updated_at
json.url product_url(product, format: :json)
