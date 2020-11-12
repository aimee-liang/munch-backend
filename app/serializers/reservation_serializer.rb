class ReservationSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :restaurant_id, :datetime, :guests
    belongs_to :user
    belongs_to :restaurant
end