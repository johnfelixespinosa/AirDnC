class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  belongs_to :client
end
