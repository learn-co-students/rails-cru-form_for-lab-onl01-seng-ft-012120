class SongsController < ApplicationController

    def new
        @artists = Artist.all
        @genres = Genre.all
        @song = Song.new
    end

    def create
        @song = Song.create(params.require(:song).permit(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end

    def show
        @song = Song.find_by(id: params[:id])
    end

    def index
        @artists = Artist.all
        @songs = Song.all
    end

    def edit
        @genres = Genre.all
        @artists = Artist.all
        @song = Song.find_by(id: params[:id])
    end

    def update
        @song = Song.find_by(id: params[:id])
        @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end
    
end