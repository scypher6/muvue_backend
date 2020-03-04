class Like < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  
  # validates :user_id, uniqueness: true
end
