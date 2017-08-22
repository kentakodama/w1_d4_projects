class UpdateArtworkShareTable < ActiveRecord::Migration[5.1]
  def change
    add_index :artwork_shares, [artist_id, viewer_id], unique: true 
  end
end
