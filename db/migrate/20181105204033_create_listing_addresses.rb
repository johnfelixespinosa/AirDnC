class CreateListingAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :listing_addresses do |t|
      t.integer :address_id

      t.timestamps
    end
  end
end
