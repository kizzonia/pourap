class AddAttachmentThumbnailToHomes < ActiveRecord::Migration
  def self.up
    change_table :homes do |t|

      t.attachment :thumbnail

    end
  end

  def self.down

    remove_attachment :homes, :thumbnail

  end
end
