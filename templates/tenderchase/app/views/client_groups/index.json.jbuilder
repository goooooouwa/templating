json.array!(@client_groups) do |client_group|
  json.extract! client_group, :id, :active, :name
  json.url client_group_url(client_group, format: :json)
end
