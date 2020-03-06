class MoviesController < ApplicationController
    def index
        movies = Movie.all.uniq.sort
        render json: movies
    end

    def topmovies
        sorteMovies = Movie.all.sort{|a,b| a.likes.size - b.likes.size }
        render json: sorteMovies
    end
end
