class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end
  def index
    @genres = Genre.all
  end
  def show
    @genre = Genre.find(params[:id])
  end
  
  def edit
    @genre = Genre.find(params[:id])
  end
  

  def update
    @genre = Genre.find(params[:id])
      if @genre.update_attributes(genres_params)
        flash[:success] = "Genre was successfully updated"
        redirect_to @genre
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end
  

  def create
    @genre = Genre.new(genres_params)
    if @genre.save
      flash[:success] = "Genre successfully created"
      redirect_to @genre
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  
  private
  def genres_params
    params.require(:genre).permit(:name)
  end
  

end
