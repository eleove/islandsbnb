class AddCheckinAndCheckoutToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :check_in, :date
    add_column :bookings, :check_out, :date
  end
end
