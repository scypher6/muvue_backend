class LikesController < ApplicationController
    before_action :authorized

    # def create
    #     @like = Like.create(user_id: params[:user][:user.id], movie_id: params[:user][:movie_id])
    #     render json: { user: UserSerializer.new(@user), token: @token }, status: :created
    # end

    def create
        # byebug
        if already_liked?
            flash[:notice] = "Sorry, can't like more than once!"
          else
            @movie = Movie.find_by(videoId: params[:videoId])
            # @movie.likes.create(user_id: params[:id])
            Like.create(movie_id: @movie.id, user_id: params[:id])
            render json: {movie: MovieSerializer.new(@movie), token: @token}, status: :created
        end
    end

    def destroy

        @like = Like.find_by(user_id: params[:id])
        @like.destroy

        render json: @like.id
    end

    private

    # def find_like
    #     @like = Like.find(params[:like][:id])
    # end

    def already_liked?
        Like.where(user_id: params[:id], movie_id: params[:videoId]).exists?
    end
end
