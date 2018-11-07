class AddProfileIdToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :profile_id, :integer
  end
end
