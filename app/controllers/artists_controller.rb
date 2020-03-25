class ArtistsController < ApplicationController
  def index
		@artists = Artist.all
	end

	def show
		@artist = Artist.find(params[:id])
	end

	def new
		@artist = Artist.new
	end

	def create
		@artist = Artist.create(require_params)
	  redirect_to artist_path(@artist)
	end

	def edit
		@artist = Artist.find(params[:id])
	end

	def update
	  @artist = Artist.find(params[:id])
	  @artist.update(require_params)
	  redirect_to artist_path(@artist)
  end
  
  private

  def require_params
    params.require(:artist).permit(:name, :bio)
  end
end
