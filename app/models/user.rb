class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :islands, through: :bookings
  validates :email, presence: true, uniqueness: true

  # par défaut simple form appelle to_s
  def to_s
    email
  end
end
