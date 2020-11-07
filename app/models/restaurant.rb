class Restaurant < ApplicationRecord
    has_many :reservations
    has_many :locations
    has_many :reviews
    has_many :users, through: :reservations
    has_many :cuisines
end
