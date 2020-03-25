a = Artist.create(name: "Artist Name", bio: "This is just a bunch of dummy text")

g = Genre.create(name: "Pop")

Song.create(name: "Song Name", artist_id: a.id, genre_id: g.id)