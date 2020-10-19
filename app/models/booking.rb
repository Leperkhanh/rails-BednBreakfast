class Booking < ApplicationRecord
    belongs_to :listing    
    belongs_to :host_user    
    belongs_to :guest_user    
end
