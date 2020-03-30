class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :movie_id, :content, :user

  def user
      self.object.user
  end

end
