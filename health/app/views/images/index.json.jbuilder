json.array!(@images) do |image|
  json.extract! image, :id, :filename, :recipe_id_id
  json.url image_url(image, format: :json)
end