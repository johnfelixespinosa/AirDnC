class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing

  has_many :bookers, class_name: "User", foreign_key: :user_id

end
