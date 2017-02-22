class AddAttachmentThumbnailToAbouts < ActiveRecord::Migration
  def self.up
    change_table :abouts do |t|

      t.attachment :thumbnail

    end
  end

  def self.down

    remove_attachment :abouts, :thumbnail

  end
end
