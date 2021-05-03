class CreateDays < ActiveRecord::Migration[6.1]
  def change
    create_table :days do |t|
      t.string :date
      t.string :note
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
