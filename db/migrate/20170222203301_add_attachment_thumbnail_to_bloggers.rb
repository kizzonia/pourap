class AddAttachmentThumbnailToBloggers < ActiveRecord::Migration
  def self.up
    change_table :bloggers do |t|

      t.attachment :thumbnail

    end
  end

  def self.down

    remove_attachment :bloggers, :thumbnail

  end
end
