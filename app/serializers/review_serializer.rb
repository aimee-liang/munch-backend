class Review_Serializer < ActiveModel::Serializer
    attributes :rating, :description, :restaurant_id, :user_id
    belongs_to :user
    belongs_to :restaurant
end