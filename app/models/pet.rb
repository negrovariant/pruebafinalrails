class Pet < ApplicationRecord
  belongs_to :client
  has_one_attached :image
end
