class ReviewsController < ApplicationController
    before_action :authorized

    def create
        @movie = Movie.find(params[:movie_id])
        @review = Review.create(user_id: params[:user_id], movie_id: @movie.id, content: params[:content])
        render json: @movie
    end

    def destroy
        
    end
end
