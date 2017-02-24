class VideosController < ApplicationController
  layout "bloggers", except:[:index, :show]
  before_action :set_videos, only: [:show, :edit, :update, :destroy]

  def index
    @videos = Video.order('created_at DESC')
  end

  def show
  end

  def new
    @video = Video.new
  end

  def edit
  end


  def create
    @video = Video.new(video_params)
    if @video.save
      flash[:success] = 'Video added!'
      redirect_to @video
    else
      render "new"
    end
  end
def update
  if @video.update(video_params)
    redirect_to @videos
  else
    render "edit"
  end
end

  private


    def set_videos
      @video = Video.find(params[:id])
    end
    def video_params
    params.require(:video).permit(:link)
  end
end
