json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :ingredients
  json.url recipe_url(recipe, format: :json)
end
