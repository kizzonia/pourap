class AddAttributesToProject < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :datemain, :datetime
  end
end
