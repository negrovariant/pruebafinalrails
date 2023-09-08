class MedicalHistory < ApplicationRecord
  belongs_to :pet
  belongs_to :appointment
end
