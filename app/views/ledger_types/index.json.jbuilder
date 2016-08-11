json.array!(@ledger_types) do |ledger_type|
  json.extract! ledger_type, :id, :name, :created_at, :updated_at
  json.url ledger_type_url(ledger_type, format: :json)
end
