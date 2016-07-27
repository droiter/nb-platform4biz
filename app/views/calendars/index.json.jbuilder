json.array!(@calendars) do |calendar|
  json.extract! calendar, :id, :type, :from, :to, :created_at, :updated_at
  json.url calendar_url(calendar, format: :json)
end
