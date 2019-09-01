class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.float :runtime
      t.boolean :top_100
      t.belongs_to :billboard, null: false, foreign_key: true
      t.has_one :artist

      t.timestamps
    end
  end
end
