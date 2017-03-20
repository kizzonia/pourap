class WelcomeController < ApplicationController
  def index
    @videos = Video.all.order('created_at DESC').limit(6)
    @events = Event.all.order('created_at DESC')
    @musics = Music.all.order('created_at DESC')
    @abouts = About.all
    @banners = Banner.all.order('created_at DESC').limit(1)
    @musics = Music.highest_voted.limit(10)
    @videos = Video.highest_voted.limit(10)

  end
end
