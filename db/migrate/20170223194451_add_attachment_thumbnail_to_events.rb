class AddAttachmentThumbnailToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|

      t.attachment :thumbnail

    end
  end

  def self.down

    remove_attachment :events, :thumbnail

  end
end
