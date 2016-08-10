json.array!(@statements) do |statement|
  json.extract! statement, :id, :type, :calendar_id, :created_at, :updated_at
  json.url statement_url(statement, format: :json)
end
