class CreateAbouts < ActiveRecord::Migration[5.0]
  def change
    create_table :abouts do |t|
      t.string :name
      t.text :bio
      t.text :contact

      t.timestamps
    end
  end
end
