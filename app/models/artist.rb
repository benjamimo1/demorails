class Artist < ApplicationRecord
	has_many :albums
	has_many :songs, through: :albums, source: :song
	belongs_to :user, optional: true

	has_many :artist_comments
	has_many :favorite_artists, :dependent => :destroy
	has_many :favorited_by, through: :favorite_artists, source: :user
end
