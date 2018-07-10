class AddArtistIdToSongs < ActiveRecord::Migration
  def change
    add column :songs, :artist_id, :integer
  end
end
