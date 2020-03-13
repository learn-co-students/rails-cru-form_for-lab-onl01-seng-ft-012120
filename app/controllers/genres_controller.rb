class GenresController < ApplicationController
    
        def new
            @artists = Artist.all
            @genre = Genre.new
        end
    
        def create
            @genre = Genre.create(params.require(:genre).permit(:name))
            redirect_to genre_path(@genre)
        end
    
        def show
            @genre = Genre.find_by(id: params[:id])
        end
    
        def index
            @genres = Genre.all
        end
    
        def edit
            @artists = Genre.all
            @genre = Genre.find_by(id: params[:id])
        end
    
        def update
            @genre = Genre.find_by(id: params[:id])
            @genre.update(params.require(:genre).permit(:name))
            redirect_to genre_path(@genre)
        end
        
    
end