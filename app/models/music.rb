class Music < ApplicationRecord
  acts_as_votable
    searchkick
    #currently use this function for search. (It works)
    scope :searching, ->(query) { __elasticsearch__.search(query).records }
  has_attached_file :albumimage, styles: { large: "1200x1000#", medium: "600x500#" }, default_url: "/images/:style/missing.png"
validates_attachment_content_type :albumimage, content_type: /\Aimage\/.*\z/

has_attached_file :song
validates_attachment_content_type :song,
content_type: [
  'application/mp3',
  'application/x-mp3',
  'audio/mpeg',
  ['audio/mpeg'], # note the array around the type
  'audio/mp3'
]

has_many :musiccomments, dependent: :destroy
def self.highest_voted
  self.order("cached_votes_score DESC")
end

end
