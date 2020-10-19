class Listing < ApplicationRecord
    belongs_to :user
    belongs_to :category

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
