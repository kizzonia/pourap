class CreateFacts < ActiveRecord::Migration[5.0]
  def change
    create_table :facts do |t|
      t.string :fun1
      t.string :fun2
      t.string :fun3

      t.timestamps
    end
  end
end
