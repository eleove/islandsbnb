class Booking < ApplicationRecord
  belongs_to :island
  belongs_to :user

  # règles de validation personnelles avec validate
  validate :availability

  private

  def availability
    if available_for?(check_in, check_out)
      errors.add(:check_in, "déjà réservé à cette date")
      errors.add(:check_out, "déjà réservé à cette date")
    end
  end

  def available_for?(checking_date, checkout_date)
    Booking.where(island: island)
           .where("check_in >= ? OR check_out <= ? ", checking_date, checkout_date)
           .exists?
  end
end
