json.extract! consultation_type, :id, :name, :location, :description, :color, :duration, :payment_required, :price, :user_id, :created_at, :updated_at
json.url consultation_type_url(consultation_type, format: :json)
json.description consultation_type.description.to_s
