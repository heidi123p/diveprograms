json.array!(@shops) do |shop|
  json.extract! shop, :id, :name, :email, :main_location
  json.url shop_url(shop, format: :json)
end
