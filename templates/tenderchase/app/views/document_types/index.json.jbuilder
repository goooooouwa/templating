json.array!(@document_types) do |document_type|
  json.extract! document_type, :id, :id, :name
  json.url document_type_url(document_type, format: :json)
end
