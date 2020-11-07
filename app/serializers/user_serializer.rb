class UserSerializer < ActiveModel::Serializer
  attributes :username, :avatar, :bio, :email
  has_many :reviews
end
