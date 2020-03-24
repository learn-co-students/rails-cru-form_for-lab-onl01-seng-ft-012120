class RenameGenreIdColumnOnSongs < ActiveRecord::Migration[5.0]
  def change
    rename_column :songs, :genere_id, :genre_id
  end
end
