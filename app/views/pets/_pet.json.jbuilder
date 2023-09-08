json.extract! pet, :id, :name, :species, :race, :date_of_birth, :medical_hostory, :additional_notes, :client_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)
