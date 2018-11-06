class Listing < ApplicationRecord
  has_one :address
  belongs_to :user
  accepts_nested_attributes_for :address
  # has_one :listing_address, through: :address
end
