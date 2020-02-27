class Genre < ApplicationRecord
    has_many :fetched
    has_many :movies, through: :fetched
end
