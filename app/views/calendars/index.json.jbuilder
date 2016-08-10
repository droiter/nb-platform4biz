json.array!(@calendars) do |calendar|
  json.extract! calendar, :id, :calendar_type, :from, :to, :created_at, :updated_at
  json.url calendar_url(calendar, format: :json)
end
