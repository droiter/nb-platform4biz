json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :user_id, :role_id, :organization_id, :start_date, :end_date, :status, :description
  json.url assignment_url(assignment, format: :json)
end
