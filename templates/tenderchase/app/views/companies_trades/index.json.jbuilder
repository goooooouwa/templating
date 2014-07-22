json.array!(@companies_trades) do |companies_trade|
  json.extract! companies_trade, :id, :company_id, :trade_id, :created_at, :updated_at
  json.url companies_trade_url(companies_trade, format: :json)
end
