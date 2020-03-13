class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :likedMovies, :reviewedMovies
  
  has_many :reviews
  has_many :movies
  
  def likedMovies
      self.object.likes.map do |like|
          like.movie
      end
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