class VendorBooking < ApplicationRecord
# Associations
  belongs_to :vendor
  belongs_to :event
end
