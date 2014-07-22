json.extract! @package, :name, :share_link, :whats_new_share_link
json.tender do
  json.extract! @package.tender, :name, :share_link
end
json.package_documents do
  json.array!(@package.package_documents) do |package_document|
    json.extract! package_document, :updated_since_last_publish, :document
  end
end
