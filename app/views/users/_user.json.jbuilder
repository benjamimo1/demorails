json.extract! user, :id, :name, :email, :image_url, :password_digest, :description, :created_at, :updated_at
json.url user_url(user, format: :json)
