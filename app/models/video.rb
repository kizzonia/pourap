class Video < ApplicationRecord
  acts_as_votable
  searchkick
  #currently use this function for search. (It works)
  scope :searching, ->(query) { __elasticsearch__.search(query).records }
  def self.highest_voted
    self.all.order("cached_votes_score DESC")
  end

  YT_LINK_FORMAT = /\A.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/i

  validates :link, presence: true, format: YT_LINK_FORMAT

before_create -> do
  uid = link.match(YT_LINK_FORMAT)
  self.uid = uid[2] if uid && uid[2]

  if self.uid.to_s.length != 11
    self.errors.add(:link, 'is invalid.')
    false
  elsif Video.where(uid: self.uid).any?
    self.errors.add(:link, 'is not unique.')
    false
  else
    def get_additional_info
      begin
        client = YouTubeIt::OAuth2Client.new(dev_key: '571999469842-8djhdmjuis4kit4lre6upqsg346j2os3.apps.googleusercontent.com')
        video = client.video_by(uid)
        self.title = video.title
        self.duration = parse_duration(video.duration)
        self.author = video.author.name
        self.thumbnail = video.thumbnail_url
        self.likes = video.rating.likes
        self.dislikes = video.rating.dislikes
      rescue
        self.title = '' ; self.duration = '00:00:00' ; self.author = '' ; self.likes = 0 ; self.dislikes = 0
      end
    end

  end





def parse_duration(d)
  hr = (d / 3600).floor
  min = ((d - (hr * 3600)) / 60).floor
  sec = (d - (hr * 3600) - (min * 60)).floor

  hr = '0' + hr.to_s if hr.to_i < 10
  min = '0' + min.to_s if min.to_i < 10
  sec = '0' + sec.to_s if sec.to_i < 10

  hr.to_s + ':' + min.to_s + ':' + sec.to_s
end
end

end
