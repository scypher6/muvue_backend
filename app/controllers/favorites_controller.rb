class FavoritesController < ApplicationController
    before_action :authorized

    def create
        # byebug
        if already_faved?
            render json: {faved: true}
        else
            @movie = Movie.find_by(videoId: params[:videoId])
            # @movie.likes.create(user_id: params[:id])
            Favorite.create(movie_id: @movie.id, user_id: params[:id])
            render json: {movie: MovieSerializer.new(@movie), token: @token, faved: true}, status: :created
        end
    end

    # def destroy

    #     @like = Like.find_by(user_id: params[:id])
    #     @like.destroy

    #     render json: @like.id
    # end

    # private

    # # def find_like
    # #     @like = Like.find(params[:like][:id])
    # # end

    def already_faved?
        Favorite.where(user_id: params[:id], movie_id: params[:videoId]).exists?
    end
end
