class RemoveClientIdFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :client_id
  end
end
