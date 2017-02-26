class WelcomeController < ApplicationController
  def index
    @videos = Video.all.order('created_at DESC')
    @events = Event.all.order('created_at DESC')
    @abouts = About.all
    @banners = Banner.all.order('created_at DESC').limit(2)
  end
end
