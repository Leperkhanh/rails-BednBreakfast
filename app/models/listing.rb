class Listing < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :bookings
    has_many :guests, through: :bookings

    def self.search(params)
        where("LOWER(title) LIKE ?", "%#{params}%")    
    end

    def host_name
        self.user.first_name + " " + self.user.last_name
    end

    def host_phone_number
        self.user.phone_number
    end    

    def host_email
        self.user.email
    end 

    def user_id
        self.user.id
    end
end
