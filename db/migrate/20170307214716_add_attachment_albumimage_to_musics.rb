class AddAttachmentAlbumimageToMusics < ActiveRecord::Migration
  def self.up
    change_table :musics do |t|

      t.attachment :albumimage

    end
  end

  def self.down

    remove_attachment :musics, :albumimage

  end
end
