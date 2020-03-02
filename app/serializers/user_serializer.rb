class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :likedMovies, :username
  
  has_many :reviews
  has_many :movies
  
  def likedMovies
      self.object.likes.map do |like|
          like.movie
      end
  end
end
