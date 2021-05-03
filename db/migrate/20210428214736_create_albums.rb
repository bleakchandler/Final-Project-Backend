class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :artist
      t.string :album_art
      t.integer :rating
      t.string :comment
      t.belongs_to :day, null: false, foreign_key: true

      t.timestamps
    end
  end
end
