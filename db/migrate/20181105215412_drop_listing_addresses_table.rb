class DropListingAddressesTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :listing_addresses
  end
end
