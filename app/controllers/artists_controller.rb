class ArtistsController < ApplicationController
  def new
    @artist = Artist.new
  end
  def index
    @artists = Artist.all
  end
  def show
    @artist = Artist.find(params[:id])
  end
  
  def edit
    @artist = Artist.find(params[:id])
  end
  

  def update
    @artist = Artist.find(params[:id])
      if @artist.update_attributes(artists_params)
        flash[:success] = "Artist was successfully updated"
        redirect_to @artist
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end
  

  def create
    @artist = Artist.new(artists_params)
    if @artist.save
      flash[:success] = "Artist successfully created"
      redirect_to @artist
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  
  private
  def artists_params
    params.require(:artist).permit(:name, :bio)
  end
  
end
