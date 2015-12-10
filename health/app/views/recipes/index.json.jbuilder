json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :ingredients, :image
  json.url recipe_url(recipe, format: :json)
end
