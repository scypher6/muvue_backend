class GenresController < ApplicationController
    
    def index
        genres = Genre.all
        render json: genres
    end

    def show
        genre = params[:id]
        moviesByGenre = ""

        case genre
             when 'action'
                 moviesByGenre = Genre.first.movies
             when 'animation'
                 moviesByGenre = Genre.second.movies
             when 'comedy'
                 moviesByGenre = Genre.third.movies
        end
        render json: moviesByGenre   
    end
end
