class CreateArtworkShareTable < ActiveRecord::Migration[5.1]
  def change
    create_table :artwork_shares do |t|
      t.integer :artwork_id
      t.integer :viewer_id
    end
    add_index :artwork_shares, :artwork_id
    add_index :artwork_shares, :viewer_id
  end
end
