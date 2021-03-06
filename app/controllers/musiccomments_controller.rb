class MusiccommentsController < ApplicationController
  def create
    @music = Music.find(params[:music_id])
    @musiccomment = @music.musiccomments.create(params[:musiccomment].permit(:name, :body))
    redirect_to music_path(@music)
  end

def destroy
  @music = Music.find(params[:music_id])
  @musiccomment = @music.musiccomments.find(params[:id])
  @musiccomment.destroy

  redirect_to music_path(@music)
end

end
