class CreateContains < ActiveRecord::Migration[5.0]
  def change
    create_table :contains do |t|
      t.integer :song_id
      t.integer :playlist_id
      t.references :song, foreign_key: true
      t.references :playlist, foreign_key: true

      t.timestamps
    end
  end
end
