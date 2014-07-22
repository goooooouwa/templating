json.array!(@offices) do |office|
  json.extract! office, :id, :active, :name, :address_line, :suburb_id, :state_id, :latitude, :longitude, :email, :phone, :fax, :notes
  json.url office_url(office, format: :json)
end
