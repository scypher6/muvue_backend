class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :img_url, :videoId
  has_many :genres, through: :fetched
  has_many :users, through: :likes
  has_many :reviews, through: :likes
  has_many :likes
  has_many :reviews
  has_many :favorites
end
