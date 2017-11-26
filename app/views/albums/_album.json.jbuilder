json.extract! album, :id, :name, :songnumber, :artist_id, :created_at, :updated_at
json.url album_url(album, format: :json)
