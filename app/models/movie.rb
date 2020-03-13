class Movie < ApplicationRecord
    has_many :likes, dependent: :destroy
    has_many :users, through: :likes

    has_many :favorites
    has_many :users, through: :favorites

    has_many :reviews
    has_many :users, through: :reviews

    has_many :fetched
    has_many :genres, through: :fetched
end
