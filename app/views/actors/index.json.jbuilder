json.array!(@actors) do |actor|
  json.extract! actor, :id, :first_name, :last_name, :birthday, :experence
  json.url actor_url(actor, format: :json)
end
