json.extract! playlist, :id, :name, :description, :user_id, :created_at, :updated_at
json.url playlist_url(playlist, format: :json)
