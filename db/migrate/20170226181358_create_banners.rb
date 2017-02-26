class CreateBanners < ActiveRecord::Migration[5.0]
  def change
    create_table :banners do |t|
      t.text :qoute
      t.text :qouter

      t.timestamps
    end
  end
end
