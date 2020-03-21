class LikesController < ApplicationController
    before_action :authorized

    # def create
    #     @like = Like.create(user_id: params[:user][:user.id], movie_id: params[:user][:movie_id])
    #     render json: { user: UserSerializer.new(@user), token: @token }, status: :created
    # end

    def create
        # byebug
        @movie = Movie.find_by(videoId: params[:videoId])
        if already_liked?
            # byebug
            like = Like.find_by(user_id: params[:id], movie_id: @movie.id)
            render json: {movie: MovieSerializer.new(@movie), likeID: like.id, liked: true}
          else
            # @movie.likes.create(user_id: params[:id])
            Like.create(movie_id: @movie.id, user_id: params[:id])
            render json: {movie: MovieSerializer.new(@movie), token: @token, liked: false}, status: :created
        end
    end

    def destroy
# byebug
        @like = Like.find(params[:id])
        @movie = Movie.find(@like[:movie_id])
        @like.destroy

        render json: @movie
    end

    private

    # def find_like
    #     @like = Like.find(params[:like][:id])
    # end

    def already_liked?
        # byebug
        @movie = Movie.find_by(videoId: params[:videoId])
        Like.where(user_id: params[:id], movie_id: @movie.id).exists?
    end
end
