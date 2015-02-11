json.array!(@plays) do |play|
  json.extract! play, :id, :title, :description, :author, :year_of_foundation
  json.url play_url(play, format: :json)
end
