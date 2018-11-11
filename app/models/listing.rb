class Listing < ApplicationRecord
  belongs_to :user

  has_many :bookings
  has_many :guests, through: :bookings, source: :user

  has_one :address, as: :addressable
  accepts_nested_attributes_for :address

  has_attached_file :listingimage, styles: { thumb: "200x200#" 
    }, default_url: "/images/:style/missing.png", dependent: :destroy
  validates_attachment_content_type :listingimage, content_type: /\Aimage\/.*\z/
end
