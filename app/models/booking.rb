class Booking < ApplicationRecord
  belongs_to :island
  belongs_to :user
  validates :check_out, presence: true # , proc (checkout && checkin < checkout)
  validates :check_in, presence: true # , proc (checkin < checkout)
  # règles de validation personnelles avec validate
  validate :correct_range
  validate :availability

  private

  def availability
    unless available_for?(check_in, check_out)
      errors.add(:check_in, "déjà réservé à cette date")
      errors.add(:check_out, "déjà réservé à cette date")
    end
  end

  # def available_for?(checking_date, checkout_date)
  #   Booking.where(island: island)
  #          .where("check_in >= ? OR check_out <= ? ", checking_date, checkout_date)
  #          .exists?
  # end

  def available_for?(checking_date, checkout_date)
    Booking.where(island: self.island)
           .where("check_in > ? OR check_out < ? ", checkout_date, checking_date)
           .length == Booking.where(island: self.island).length
  end

  def correct_range
    if check_out < check_in
      errors.add(:check_in, "la date d'arrivée doit être antérieure à la date de départ")
      errors.add(:check_out, "la date d'arrivée doit être antérieure à la date de départ")
    end
  end
end
