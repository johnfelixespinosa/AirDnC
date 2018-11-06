class AddAttachmentListingimageToListings < ActiveRecord::Migration[5.2]
  def self.up
    change_table :listings do |t|
      t.attachment :listingimage
    end
  end

  def self.down
    remove_attachment :listings, :listingimage
  end
end
