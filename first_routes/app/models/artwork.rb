# == Schema Information
#
# Table name: artworks
#
#  id        :integer          not null, primary key
#  title     :string
#  image_url :string
#  artist_id :integer
#

class Artwork < ApplicationRecord

  validates :title, presence: true, uniqueness: { scope: :artist_id } #this makes it unique for a particular attribute like artist 
  validates :image_url, presence: true
  validates :artist_id, presence: true

end
