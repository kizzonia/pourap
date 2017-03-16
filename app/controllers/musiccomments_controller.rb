class MusiccommentsController < ApplicationController
  def created
    @music = Music.find(params[:music_id])
    @musiccomments = @music.musiccoments.create(params[:music].permit[:name, :body])
    redirect_to musics_path(@music)
  end
end
