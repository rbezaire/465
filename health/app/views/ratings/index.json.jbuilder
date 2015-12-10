json.array!(@ratings) do |rating|
  json.extract! rating, :id, :recipe_id, :rate, :comment
  json.url rating_url(rating, format: :json)
end
