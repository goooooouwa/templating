json.array!(@trades) do |trade|
  json.extract! trade, :id, :active, :name, :alternative_sort_order
  json.url trade_url(trade, format: :json)
end
