class CreateArtistComments < ActiveRecord::Migration[5.0]
  def change
    create_table :artist_comments do |t|
      t.string :commenter
      t.text :body
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
