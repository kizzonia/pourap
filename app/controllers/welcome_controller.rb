class WelcomeController < ApplicationController
  def index
    @homes = Home.all.order("created_at DESC").limit(1)
    @videos = Video.all.order('created_at DESC')
    @events = Event.all.order('created_at DESC')
    @abouts = About.all


  end
end
