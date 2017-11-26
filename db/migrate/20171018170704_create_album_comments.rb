class CreateAlbumComments < ActiveRecord::Migration[5.0]
  def change
    create_table :album_comments do |t|
      t.string :commenter
      t.text :body
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
