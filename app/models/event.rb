class Event < ApplicationRecord
  # Associations
  belongs_to :admin
  has_many :bookings
  has_many :users, through: :bookings
  has_many :vendors, through: :vendor_bookings
  has_many :vendor_bookings
end
