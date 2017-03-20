class MusicsController < ApplicationController
  layout "bloggers", except: [:index, :show]
  before_action :set_music, only:[:show, :edit, :upvote, :downvote, :update, :destroy]

  def index
    @musics = Music.all.order("created_at DESC")
     @musics = Music.highest_voted.all.limit(10)
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

  def upvote
    @music = Music.find(params[:id])
    session[:voting_id] = request.remote_ip
    voter = Session.find_or_create_by(ip: session[:voting_id])
    voter.likes @music
    redirect_to :back
  end

  def downvote
    @music = Music.find(params[:id])
    session[:voting_id] = request.remote_ip
  voter = Session.find_or_create_by(ip: session[:voting_id])
  voter.dislikes @music
    redirect_to :back
  end



  def download
      @music = Music.find(params[:id])

        extension = File.extname(@music.song_file_name)
 send_data open("#{@music.song.expiring_url(10000, :original)}").read, filename: "#{@music.songname}_#{@music.id}#{extension}", type: @music.song_content_type, x_sendfile: true
  end



  private
  def music_params
    params.require(:music).permit(:songname, :description, :albumimage, :artist, :discography, :published, :subtitle, :song)
  end

  def set_music
    @music = Music.find(params[:id])
  end

end
