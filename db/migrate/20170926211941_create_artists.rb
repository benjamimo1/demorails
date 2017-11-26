class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.text :description
      t.text :genre
      t.text :origin
      t.text :yearsactive
      t.text :members
      t.text :name
      t.integer :artist_id
      t.integer :user_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
