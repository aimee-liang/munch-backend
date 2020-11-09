class UserSerializer < ActiveModel::Serializer
  attributes :username, :avatar, :bio, :email, :confirm_password, :password
  # attributes :username, :avatar, :bio
  has_many :reviews
end
