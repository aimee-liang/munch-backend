class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar, :bio, :email, :password
  
  has_many :reviews
end
