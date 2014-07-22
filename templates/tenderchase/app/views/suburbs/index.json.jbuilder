json.array!(@suburbs) do |suburb|
  json.extract! suburb, :id, :name, :state_id, :postcode, :latitude, :longitude
  json.url suburb_url(suburb, format: :json)
end
