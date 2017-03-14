class AddAttachmentSongToMusics < ActiveRecord::Migration
  def self.up
    change_table :musics do |t|

      t.attachment :song

    end
  end

  def self.down

    remove_attachment :musics, :song

  end
end
