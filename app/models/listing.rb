class Listing < ApplicationRecord
    belongs_to :user
    belongs_to :category

    def host_name
        self.user.first_name + " " + self.user.last_name
    end
end
