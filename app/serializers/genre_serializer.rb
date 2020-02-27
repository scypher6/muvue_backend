class GenreSerializer < ActiveModel::Serializer
  attributes :name
  has_many :movies
end
