json.array!(@tenders) do |tender|
  json.extract! tender, :id, :name, :active, :received_at, :closing_at, :submission_details, :submitted_at, :client_group_id, :client_subgroup_id, :region_id, :address_line, :suburb, :postcode, :state_id, :latitude, :longitude, :work_description, :email, :estimator_id, :quantity_surveyor_id, :status_id, :status_changed_at, :tender_status_id, :external_db_id
  json.client_group do
    json.extract! tender.client_group, :name
  end
  json.status do
    json.extract! tender.status, :human, :human_short
  end
  json.activities do
    json.array!(tender.activities) do |activity|
      json.extract! activity, :human_short, :human
    end
  end
  json.url tender_url(tender, format: :json)
end
