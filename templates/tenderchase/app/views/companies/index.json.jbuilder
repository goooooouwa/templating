json.array!(@companies) do |company|
  json.extract! company, :id, :name, :active, :contacts, :full_street_address, :postcode, :state_id, :suburb_id, :latitude, :longitude, :phone, :mobile, :fax, :notes, :problematic, :review, :external_db_id
  json.url company_url(company, format: :json)
end
