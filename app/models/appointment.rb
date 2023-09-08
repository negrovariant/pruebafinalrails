class Appointment < ApplicationRecord
  belongs_to :veterinary
  belongs_to :pet
  belongs_to :service
end
