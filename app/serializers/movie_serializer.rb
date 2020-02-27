class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :img_url, :videoId, :updatedAt
  has_many :genres, through: :fetched
  has_many :users
  has_many :likes
  has_many :ratings
  has_many :reviews
  has_many :favorites
end
