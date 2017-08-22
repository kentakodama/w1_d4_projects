class ArtworkShare < ApplicationRecord

  validates :artist_id, presence: true, uniqueness: { scope: :artwork_id }
  validates :artwork_id, presence: true

end
