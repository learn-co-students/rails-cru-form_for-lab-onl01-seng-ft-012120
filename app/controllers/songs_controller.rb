class SongsController < ApplicationController
  def new
    @song = Song.new
  end
  def index
    @songs = Song.all
  end
  def show
    @song = Song.find(params[:id])
  end
  
  def edit
    @song = Song.find(params[:id])
  end
  

  def update
    @song = Song.find(params[:id])
      if @song.update_attributes(songs_params)
        flash[:success] = "song was successfully updated"
        redirect_to @song
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end
  

  def create
    @song = Song.new(songs_params)
    if @song.save
      flash[:success] = "song successfully created"
      redirect_to @song
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  
  private
  def songs_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
  

end
