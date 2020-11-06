class User < ApplicationRecord
    has_secure_password
    has_many :reservations
    has_many :restaurants, through: :reservations
    validates :username, uniqueness: { case_sensitive: false }
end
