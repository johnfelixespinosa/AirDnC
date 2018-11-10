class ChangeBookingsUserIdToGuestId < ActiveRecord::Migration[5.2]
  def change
    rename_column :bookings, :user_id, :guest_id
  end
end
