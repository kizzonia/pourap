class Music < ApplicationRecord
  has_attached_file :albumimage, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
validates_attachment_content_type :albumimage, content_type: /\Aimage\/.*\z/

has_attached_file :song
validates_attachment_content_type :song, content_type: "audio/mpeg", "audio/mp3", "audio/wmv",
file_name: {matches: [/mp3\Z/]}

end
