class Listing < ApplicationRecord
  has_one :address
  has_one :listing_address, through: :address
end
