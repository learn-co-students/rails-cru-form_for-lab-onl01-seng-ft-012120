class Song < ApplicationRecord
    belongs_to :artist
    belongs_to :genre
   

    # #pass in @song and for artist params[:song][:artist]
    # def get_song_artist(song, artist)
    #     @artist = find_or_create_by(name: )
    #     artist_names = Artist.all.map{|each| each.name}
    #     if artist_names.include?(artist)
    #         song_artist = Artist.find_by_name(artist)
    #         song.artist = song_artist
    #     else 
    #         song_artist = Artist.create(name: artist)
    #         song.artist = song_artist 
    #     end
    # end

    # def get_song_genre(song, genre)
    #     genre_names = Genre.all.map{|each| each.name}
    #     if genre_names.include?(genre)
    #         song_genre = Genre.find_by_name(genre)
    #         song.genre = song_genre
    #     else
    #         song_genre = Genre.create(name: genre)
    #         song.genre = song_genre 
    #     end
    # end
    
end
