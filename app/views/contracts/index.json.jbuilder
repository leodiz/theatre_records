json.array!(@contracts) do |contract|
  json.extract! contract, :id, :sum, :date, :references, :references, :references
  json.url contract_url(contract, format: :json)
end
