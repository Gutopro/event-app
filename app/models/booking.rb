class Booking < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :event
end
