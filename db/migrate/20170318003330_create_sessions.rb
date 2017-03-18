class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.integer :voting_id

      t.timestamps
    end
  end
end
