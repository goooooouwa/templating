json.extract! @package, :id, :name, :tender_id, :trade_id, :has_update, :created_at, :updated_at
json.tenderers do
  json.array!(@package.tenderers) do |tenderer|
    json.extract! tenderer, :id, :tender_id, :package_id, :company_id
  end
end
json.package_documents do
  json.array!(@package.package_documents) do |package_document|
    json.extract! package_document, :id, :document, :has_update, :package_id
  end
end
