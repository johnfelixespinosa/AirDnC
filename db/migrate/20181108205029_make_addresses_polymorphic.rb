class MakeAddressesPolymorphic < ActiveRecord::Migration[5.2]
  def change
    remove_column :addresses, :listing_id
    remove_column :addresses, :profile_id
    add_column :addresses, :addressable_id, :integer
    add_column :addresses, :addressable_type, :string
  end
end
