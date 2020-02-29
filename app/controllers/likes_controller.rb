class LikesController < ApplicationController
    before_action :authorized
    def create
        @like = Like.create(user_id: params[:user][:user.id], movie_id: params[:user][:movie_id])
        render json: { user: UserSerializer.new(@user), token: @token }, status: :created
    end
end
