json.array!(@ratings) do |rating|
  json.extract! rating, :id, :recipe_id_id, :comment, :rate
  json.url rating_url(rating, format: :json)
end
