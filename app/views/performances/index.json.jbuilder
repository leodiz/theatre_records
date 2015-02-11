json.array!(@performances) do |performance|
  json.extract! performance, :id, :datetime, :budget, :play
  json.url performance_url(performance, format: :json)
end
