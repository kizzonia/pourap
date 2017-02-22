class AddSocialLinksToAbout < ActiveRecord::Migration[5.0]
  def change
    add_column :abouts, :facebook, :string
    add_column :abouts, :twitter, :string
    add_column :abouts, :email, :text
  end
end
