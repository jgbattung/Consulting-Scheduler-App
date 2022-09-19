json.extract! consultation, :id, :status, :first_name, :last_name, :email, :start_at, :end_at, :created_at, :updated_at
json.url consultation_url(consultation, format: :json)
