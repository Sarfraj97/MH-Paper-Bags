json.extract! product, :id, :title, :available, :price, :rating, :description, :size, :minimun_order_stock, :images, :created_at, :updated_at
json.url product_url(product, format: :json)
json.images do
  json.array!(product.images) do |image|
    json.id image.id
    json.url url_for(image)
  end
end
