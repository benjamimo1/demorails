class CreateSongComments < ActiveRecord::Migration[5.0]
  def change
    create_table :song_comments do |t|
      t.string :commenter
      t.text :body
      t.references :song, foreign_key: true

      t.timestamps
    end
  end
end
