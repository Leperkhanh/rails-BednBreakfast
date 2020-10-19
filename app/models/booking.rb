class Booking < ApplicationRecord
    belongs_to :listing 
    has_many :guests, through: :bookings
end
