class Address < ApplicationRecord
  belongs_to :listing
  has_one :listing_address
end
