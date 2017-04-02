class Event < ApplicationRecord
  acts_as_votable
  searchkick
  has_attached_file :thumbnail

validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/

has_many :eventscomments, dependent: :destroy
end
