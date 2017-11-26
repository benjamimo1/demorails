class Playlist < ApplicationRecord
	belongs_to :user, optional: true

	has_many :contains
	has_many :songs, through: :contains, source: :song

	has_many :favorite_playlists, :dependent => :destroy
	has_many :favorited_by, through: :favorite_playlists, source: :user
end
