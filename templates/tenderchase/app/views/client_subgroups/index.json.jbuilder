json.array!(@client_subgroups) do |client_subgroup|
  json.extract! client_subgroup, :id, :active, :name, :client_group_id
  json.url client_subgroup_url(client_subgroup, format: :json)
end
