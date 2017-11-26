class Song < ApplicationRecord
	belongs_to :album, optional: true
	belongs_to :user, optional: true

	has_many :contains
	has_many :playlists, through: :contains, source: :playlist

	has_many :song_comments

	has_many :favorite_songs, :dependent => :destroy
	has_many :favorited_by, through: :favorite_songs, source: :user
end
