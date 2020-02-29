class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username
  
  has_many :likes
  has_many :reviews
  has_many :movies
end
