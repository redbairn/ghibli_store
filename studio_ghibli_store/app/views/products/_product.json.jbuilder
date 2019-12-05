json.extract! product, :id, :title, :description, :colour, :cost_price, :image_url, :category, :supplier_id, :created_at, :updated_at
json.url product_url(product, format: :json)
