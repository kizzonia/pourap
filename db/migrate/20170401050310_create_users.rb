class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :soundcloud_user_id
      t.string :soundcloud_username
      t.string :soundcloud_access_token
      t.string :soundcloud_refresh_token
      t.datetime :soundcloud_expires_at

      t.timestamps
    end
  end
end
