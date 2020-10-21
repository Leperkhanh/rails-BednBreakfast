class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable,
         :omniauthable, omniauth_providers: [:google_oauth2]
  has_many :listings , dependent: :destroy
  has_many :bookings, through: :listings 
  has_many :guests, through: :listings

  def self.from_omniauth(auth)
      where(provider: auth.provider, uid: auth.uid).first_or_create! do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.save!
      end   
  end


  private 

  def auth 
    request.env['omniauth.auth']
  end
end
