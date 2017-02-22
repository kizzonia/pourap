class AddAttachmentThumbnailToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|

      t.attachment :thumbnail

    end
  end

  def self.down

    remove_attachment :projects, :thumbnail

  end
end
