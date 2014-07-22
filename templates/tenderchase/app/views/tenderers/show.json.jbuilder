json.extract! @tenderer, :id, :tender_id, :company_id, :contact_id, :package_id, :status_id, :will_quote, :quote_responsed_at, :quote_price, :quote_notes, :notes, :created_at, :updated_at
json.company do
  json.extract! @tenderer.company, :name, :trades
end
json.contact do
  json.extract! @tenderer.contact, :full_name, :phone, :email
end
json.calls do
  json.array!(@tenderer.calls) do |call|
    json.extract! call, :id, :user, :tenderer, :contact, :note, :created_at
    json.user do
      json.extract! call.user, :name
    end
  end
end
json.status do
  json.extract! @tenderer.status, :human, :human_short
end
json.activities do
  json.array!(@tenderer.activities) do |activity|
    json.extract! activity, :human_short, :human
  end
end
json.package do
  json.extract! @tenderer.package, :name
end
