class Album < ApplicationRecord
	has_many :songs
	belongs_to :artist, optional: true
	belongs_to :user, optional: true

	has_many :album_comments

	has_many :favorite_albums, :dependent => :destroy
	has_many :favorited_by, through: :favorite_albums, source: :user
end
