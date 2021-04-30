class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.integer :rating
      t.string :comment
      t.belongs_to :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
