json.array!(@images) do |image|
  json.extract! image, :id, :id, :private, :user_id, :filename
  json.url image_url(image, format: :json)
end
