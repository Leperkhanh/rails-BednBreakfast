class Category < ApplicationRecord
    has_many :listings
    has_many :users, through: :listings
    validates_presence_of :name 
end
