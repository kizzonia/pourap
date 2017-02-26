class VideosController < ApplicationController
  layout "bloggers", except:[:index, :show]
  before_action :set_about, only: [:destroy]

  def index
    @videos = Video.all.order('created_at DESC')
    @abouts = About.all

  end

def show
  @video = Video.find(params[:video][:link][:id])
end

  def new
  @video = Video.new
end

def create
@video = Video.new(link: params[:video][:link])
  if @video.save
    flash[:success] = 'Video added!'
    redirect_to root_url
  else
    render 'new'
  end
end

def destroy
  @video.destroy
  redirect_to @videos, notice: "video was removed"
end

  private
  def set_about
    @video = Video.find(params[:id][:link][:video])
  end


    def video_params
    params.require(:video).permit(:link)
  end
end
