json.array!(@contacts) do |contact|
  json.extract! contact, :id, :active, :company_id, :full_name, :first_name, :last_name, :email, :job_role, :phone, :notes, :external_db_id
  json.url contact_url(contact, format: :json)
end
