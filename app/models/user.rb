class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]
  has_many :bookings
  has_many :islands, through: :bookings
  validates :email, presence: true, uniqueness: true
  mount_uploader :avatar, PhotoUploader

  # par défaut simple form appelle to_s
  def to_s
    email
  end

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    # Uncomment the section below if you want users to be created if they don't exist
    unless user
      user = User.create(email: data['email'],
        password: Devise.friendly_token[0,20],
        remote_avatar_url: access_token['info']['image']
      )
    end

    user
  end
end
