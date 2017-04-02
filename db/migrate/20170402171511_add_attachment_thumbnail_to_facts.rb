class AddAttachmentThumbnailToFacts < ActiveRecord::Migration
  def self.up
    change_table :facts do |t|

      t.attachment :thumbnail

    end
  end

  def self.down

    remove_attachment :facts, :thumbnail

  end
end
