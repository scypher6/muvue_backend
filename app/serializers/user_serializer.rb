class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :likedMovies, :reviewedMovies
  
  has_many :reviews
  has_many :likes, through: :movies
  
  def likedMovies
      self.object.likes.map do |like|
          like.movie
      end.uniq
  end


  def reviewedMovies
      self.object.reviews.map do |review|
          review.movie
      end.uniq
  end

  
  def favedMovies
    self.object.favorites.map do |favorite|
        favorite.movie.uniq
    end
  end

end