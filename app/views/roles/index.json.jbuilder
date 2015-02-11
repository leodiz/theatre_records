json.array!(@roles) do |role|
  json.extract! role, :id, :title, :play_id
  json.url role_url(role, format: :json)
end
