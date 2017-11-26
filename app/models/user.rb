class User < ApplicationRecord
	has_secure_password

	has_many :playlists
	has_many :songs
	has_many :albums
	has_many :artists

	has_many :favorite_songs, :dependent => :destroy
	has_many :favoritesongs, through: :favorite_songs, source: :song

	has_many :favorite_albums, :dependent => :destroy
	has_many :favoritealbums, through: :favorite_albums, source: :album

	has_many :favorite_artists, :dependent => :destroy
	has_many :favoriteartists, through: :favorite_artists, source: :artist

	has_many :favorite_playlists, :dependent => :destroy
	has_many :favoriteplaylists, through: :favorite_playlists, source: :playlist

	has_many :friendships
	has_many :friends, :through => :friendships
	has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
	has_many :inverse_friends, :through => :inverse_friendships, :source => :user

end
