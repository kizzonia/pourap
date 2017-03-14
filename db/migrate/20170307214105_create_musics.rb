class CreateMusics < ActiveRecord::Migration[5.0]
  def change
    create_table :musics do |t|
      t.string :songname
      t.text :description
      t.string :artist
      t.text :discography
      t.datetime :published
      t.text :subtitle

      t.timestamps
    end
  end
end
