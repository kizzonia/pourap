class Fact < ApplicationRecord
  has_attached_file :thumbnail

validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/
end
