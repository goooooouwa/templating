json.array!(@regions) do |region|
  json.extract! region, :id, :active, :name, :state_id
  json.url region_url(region, format: :json)
end
