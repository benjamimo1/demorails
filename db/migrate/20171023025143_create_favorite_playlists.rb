class CreateFavoritePlaylists < ActiveRecord::Migration[5.0]
  def change
    create_table :favorite_playlists do |t|
      t.references :user, foreign_key: true
      t.references :playlist, foreign_key: true

      t.timestamps
    end
  end
end
