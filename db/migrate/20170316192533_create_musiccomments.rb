class CreateMusiccomments < ActiveRecord::Migration[5.0]
  def change
    create_table :musiccomments do |t|
      t.string :name
      t.text :body
      t.references :music, foreign_key: true

      t.timestamps
    end
  end
end
