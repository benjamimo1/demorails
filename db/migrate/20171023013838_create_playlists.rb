class CreatePlaylists < ActiveRecord::Migration[5.0]
  def change
    create_table :playlists do |t|
      t.string :name
      t.string :description
      t.integer :user_id
      t.boolean :public
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
