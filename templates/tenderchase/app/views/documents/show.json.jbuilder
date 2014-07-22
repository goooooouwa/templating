json.extract! @document, :id, :tender_id, :document_type_id, :filename, :path, :document_id, :description, :latest_version, :addendum, :created_at, :updated_at
json.tender do
  json.extract! Tender.find(@document.tender_id), :name
end
json.document_type do
  json.extract! DocumentType.find(@document.document_type_id), :name
end
