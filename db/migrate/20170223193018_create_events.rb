class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :shortDescription
      t.text :description
      t.text :location
      t.string :eventDate
      t.text :sponsors
      t.text :socialLink

      t.timestamps
    end
  end
end
