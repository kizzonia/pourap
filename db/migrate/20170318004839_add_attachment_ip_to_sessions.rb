class AddAttachmentIpToSessions < ActiveRecord::Migration[5.0]
  def change
    add_column :sessions, :ip, :string
  end
end
