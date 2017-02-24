class VideosController < ApplicationController
  layout "bloggers", except:[:index, :show]

  def index
    @videos = Video.all.order('created_at DESC')
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

  private


    def video_params
    params.require(:video).permit(:link)
  end
end
