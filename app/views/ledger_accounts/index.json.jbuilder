json.array!(@ledger_accounts) do |ledger_account|
  json.extract! ledger_account, :id, :ledger_id, :account_id
  json.url ledger_account_url(ledger_account, format: :json)
end
