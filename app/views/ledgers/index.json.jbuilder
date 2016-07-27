json.array!(@ledgers) do |ledger|
  json.extract! ledger, :id, :calendar_id, :type, :account, :amount, :created_at, :updated_at
  json.url ledger_url(ledger, format: :json)
end
