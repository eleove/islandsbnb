class Booking < ApplicationRecord
  belongs_to :island
  belongs_to :user

  # règles de validation personnelles avec validate
  # validate :availability

  private

  # self est une instance de Booking, qui a une island

  # def availability
  #   # A MODIFIER
  #   if Booking.where(island: self.island, "check_in > ....", "check_out < ...").empty?
  #     error.add(:checkin, "Deja reservé a cette date")
  #   end
  # end
end
