class AddAttachmentThumbnailToBanners < ActiveRecord::Migration
  def self.up
    change_table :banners do |t|

      t.attachment :thumbnail

    end
  end

  def self.down

    remove_attachment :banners, :thumbnail

  end
end
