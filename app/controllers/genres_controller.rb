class GenresController < ApplicationController
    
    def index
        genres = Genre.all
        render json: genres
    end

    def show
        selectedGenre = params[:id]
        renderedGenre = ""

        case selectedGenre
             when 'action'
                 renderedGenre = Genre.first.movies
            #  when 'horror'
            #      renderedGenre = Genre.second.movies
            #  when 'comedy'
            #      renderedGenre = Genre.third.movies
        end
        render json: renderedGenre   
    end
end
