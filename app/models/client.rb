class Client < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :listings, through: :bookings
end
