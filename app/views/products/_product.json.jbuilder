json.extract! product, :id, :name, :composition, :price, :manufacturer, :type_id, :created_at, :updated_at
json.url product_url(product, format: :json)
