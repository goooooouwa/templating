json.array!(@calls) do |call|
  json.extract! call, :id, :user_id, :tenderer_id, :contact_id, :note, :created_at, :updated_at
  json.user do
    json.extract! call.user, :name
  end
  json.contact do
    json.extract! call.contact, :full_name
  end
  json.url call_url(call, format: :json)
end
