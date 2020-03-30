class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :movie_id, :content, :created_at, :user

  def user
      self.object.user
  end

  def created_at
      self.object.created_at.strftime("%m-%d-%YT%I:%M %P").upcase
  end

end
