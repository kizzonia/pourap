class AddAttributesToVideo < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :description, :text
    add_column :videos, :story, :text
  end
end
