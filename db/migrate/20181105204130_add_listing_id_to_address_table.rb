class AddListingIdToAddressTable < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :listing_id, :integer
  end
end
