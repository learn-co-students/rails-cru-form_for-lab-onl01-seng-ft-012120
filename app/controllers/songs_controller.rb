class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.new(songs_params(:name))
        @song.save
        redirect_to songs_path
    end

    def show
        @song = Song.find(params[:id])
        @artist = @song.artist
        @genre = @song.genre
    end

    def edit
        @song = Song.find(params[:id])
    end

    def update
        @song = Song.find(params[:id])
        @song.update(songs_params(:name))
        redirect_to songs_path
    end

    private 
    def songs_params(*args)
        params.require(:song).permit(*args)
    end
end
