class RatingSerializer < ActiveModel::Serializer
  attributes :id, :stars
  has_one :user
  has_one :movie
end
