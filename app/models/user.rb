class User < ApplicationRecord
    has_many :likes, dependent: :destroy
    has_many :movies, through: :likes

    has_many :favorites, dependent: :destroy
    has_many :movies, through: :favorites

    has_many :reviews, dependent: :destroy
    has_many :movies, through: :reviews

    has_many :ratings, dependent: :destroy
    has_many :movies, through: :ratings

    has_secure_password
    # validates :name, uniqueness: true
end
