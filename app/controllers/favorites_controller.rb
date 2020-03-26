class FavoritesController < ApplicationController
    before_action :authorized

    def create
        @movie = Movie.find_by(videoId: params[:videoId])
        # byebug
        if already_faved?
            render json: {movie: MovieSerializer.new(@movie), token: @token, faved: true}
        else
            # @movie.likes.create(user_id: params[:id])
            Favorite.create(movie_id: @movie.id, user_id: params[:id])
            render json: {movie: MovieSerializer.new(@movie), token: @token, faved: false}, status: :created
        end
    end

    def destroy
        @fav = Favorite.find(params[:id])
        @movie = Movie.find(@fav[:movie_id])
        @fav.destroy

        render json: @movie
    end

    private

    # # def find_like
    # #     @like = Like.find(params[:like][:id])
    # # end

    def already_faved?
        @movie = Movie.find_by(videoId: params[:videoId])
        Favorite.where(user_id: params[:id], movie_id: @movie.id).exists?
    end
end
