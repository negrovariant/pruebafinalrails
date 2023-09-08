json.extract! medical_history, :id, :content, :pet_id, :appointment_id, :created_at, :updated_at
json.url medical_history_url(medical_history, format: :json)
