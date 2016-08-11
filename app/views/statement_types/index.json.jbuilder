json.array!(@statement_types) do |statement_type|
  json.extract! statement_type, :id, :name, :created_at, :updated_at
  json.url statement_type_url(statement_type, format: :json)
end
