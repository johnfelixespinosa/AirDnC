class Listing < ApplicationRecord
  has_one :address
  belongs_to :host, class_name: "User", foreign_key: 'user_id'
  accepts_nested_attributes_for :address

  has_attached_file :listingimage, styles: { thumb: "200x200#" 
    }, default_url: "/images/:style/missing.png", dependent: :destroy
  validates_attachment_content_type :listingimage, content_type: /\Aimage\/.*\z/
end
