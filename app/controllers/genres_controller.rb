class GenresController < ApplicationController
  def index
		@genres = Genre.all
	end

	def show
		@genre = Genre.find(params[:id])
	end

	def new
		@genre = Genre.new
	end

	def create
		@genre = Genre.create(require_params)
	  redirect_to genre_path(@genre)
	end

	def edit
		@genre = Genre.find(params[:id])
	end

	def update
	  @genre = Genre.find(params[:id])
	  @genre.update(require_params)
	  redirect_to genre_path(@genre)
  end
  
  private

  def require_params
    params.require(:genre).permit(:name)
  end
end
