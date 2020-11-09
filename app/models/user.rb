class User < ApplicationRecord
    has_secure_password
    has_many :reservations
    has_many :restaurants, through: :reservations
    has_many :reviews
    validates :username, uniqueness: { case_sensitive: false }
    validates :password, presence: true
end
