json.array!(@packages) do |package|
  json.extract! package, :id, :name, :trade_id, :tender_id, :has_update
  json.tender do
    json.extract! Tender.find(package.tender_id), :name
  end
  json.tenderers do
    json.array!(package.tenderers) do |tenderer|
      json.extract! tenderer, :id, :tender_id, :package_id, :company_id
    end
  end
  json.package_documents do
    json.array!(package.package_documents) do |package_document|
      json.extract! package_document, :id, :document, :has_update, :package_id
    end
  end
  json.trade do
    json.extract! Trade.find(package.trade_id), :name
  end
  json.url package_url(package, format: :json)
end
