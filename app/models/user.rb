class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :listings , dependent: :destroy
  has_many :bookings, through: :listings 
  has_many :guests, through: :listings
  validates_presence_of :first_name, :last_name, :phone_number, :bio
end
