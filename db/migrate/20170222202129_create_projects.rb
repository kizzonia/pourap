class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :date
      t.string :link
      t.text :description
      t.text :owner

      t.timestamps
    end
  end
end
