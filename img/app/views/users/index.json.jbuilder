json.array!(@users) do |user|
  json.extract! user, :id, :id, :email, :encrypted_password, :name
  json.url user_url(user, format: :json)
end
