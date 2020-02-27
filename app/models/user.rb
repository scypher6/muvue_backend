class User < ApplicationRecord
    has_many :likes
    has_many :movies, through: :likes

    has_many :favorites
    has_many :movies, through: :favorites

    has_many :reviews
    has_many :movies, through: :reviews

    has_many :ratings
    has_many :movies, through: :ratings
end
