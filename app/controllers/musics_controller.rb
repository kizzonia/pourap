class MusicsController < ApplicationController
  layout "bloggers", except: [:index, :show]
  before_action :set_music, only:[:show, :edit, :update, :destroy]

  def index
    @musics = Music.all.order("created_at DESC")
  end

  def show
  end

  def new
    @music = Music.new
  end

  def create
    @music = Music.new(music_params)

    if @music.save
      redirect_to @music
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @music.update
      redirect_to @music
    else
      render 'edit'
    end
  end


  def destroy
    @music.destroy
    redirect_to musics_url
  end






  private
  def music_params
    params.require(:music).permit(:songname, :description, :albumimage, :artist, :discography, :published, :subtitle, :song)
  end

  def set_music
    @music = Music.find(params[:id])
  end

end
