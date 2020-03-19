class SongsController < ApplicationController
  def index
    @songs = Song.all
  end
  def new
    @song = Song.new
  end
  def edit 
    @song = Song.find(params[:id])
  end
  
  def create
    #raise params.inspect    <ActionController::Parameters {"utf8"=>"✓", "song"=>{"name"=>"My song name", "artist_id"=>"1", "genre_id"=>"1"}, "commit"=>"Create Song", "controller"=>"songs", "action"=>"create"} permitted: false>
    @song = Song.create(song_params)
    # @artist = Artist.find_or_create_by(name: song_params[:artist])
    # @genre = Genre.find_or_create_by(name: song_params[:genre])
    #get_song_artist(@song, artist_params[:name]) ###
    #get_song_genre(@song, song_params[:genre])
    # @song.genre = @genre 
    # @song.artist = @artist
    @song.save
    redirect_to song_path(@song)
  end
 ########!!!!!!! @company = Company.find_or_create_by(name: company[:name])

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    #raise params.inspect #<ActionController::Parameters {"utf8"=>"✓", "_method"=>"patch", "song"=><ActionController::Parameters {"name"=>"My edit", "artist_id"=>"1", "genre_id"=>"1"} permitted: false>, "commit"=>"Update Song", "controller"=>"songs", "action"=>"update", "id"=>"1"} permitted: false>
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
  end

  private
  def song_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
