json.extract! appointment, :id, :date, :hour, :duration, :veterinary_id, :pet_id, :service_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
