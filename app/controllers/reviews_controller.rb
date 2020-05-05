class ReviewsController < ApplicationController
    before_action :authorized

    def index
        @reviews = Review.all
        render json: @reviews
    end

    def create
        @movie = Movie.find(params[:movie_id])
        @review = Review.create(user_id: params[:user_id], movie_id: @movie.id, content: params[:content])
        render json: @review
    end

    def destroy
        # byebug
        @review = Review.find(params[:id])
        @review.destroy

        render json: @review
    end
end
