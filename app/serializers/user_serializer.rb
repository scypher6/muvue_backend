class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :pictures, :likedMovies, :reviewedMovies
  
  has_many :reviews
  has_many :favorites
  has_many :likes, through: :movies
  
  def likedMovies
      self.object.likes.map do |like|
          like.movie
      end.uniq
  end


  def reviewedMovies
      self.object.reviews.map do |review|
          review.movie
      end
  end

  
  def favedMovies
    self.object.favorites.map do |favorite|
        favorite.movie
    end
  end

end