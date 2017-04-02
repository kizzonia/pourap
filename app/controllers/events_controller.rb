class EventsController < ApplicationController
  before_action :authenticate_blogger!, except: [:index, :show]
  layout "bloggers", except:[:index, :show, :search]
  before_action :set_event, only: [:show, :edit, :upvote, :downvote, :update, :destroy]
  def search
    if params[:search].present?
      @events = Event.search(params[:search])
      @musics = Music.highest_voted.limit(10)
       @videos = Video.highest_voted.limit(10)
    else
      @events = Event.all.order("created_at DESC")
    end
  end
  def index
    @events = Event.all.order('created_at DESC')
    @videos = Video.highest_voted.all.limit(10)
    @musics = Music.highest_voted.all.limit(10)
  end

  def show
    @videos = Video.highest_voted.all.limit(10)
    @musics = Music.highest_voted.all.limit(10)
  end

  def new
    @event = Event.new
  end

  def edit
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to @event
      flash = { success: "Congratulations!! Created Successfully", error: "Action Not Successfull." }
    else
      render 'new'
    end
  end

    def update
      if @event.update(event_params)

        redirect_to @event
        flash = { success: "Congratulations!! Updated Successfully", error: "Action Not Successfull." }

      else
        render "edit"
      end
    end

      def destroy
        @event.destroy
        flash = { success: "Congratulations!! Deleted Successfully", error: "Action Not Successfull." }

        redirect_to root_path
      end

      def upvote
        @event = Event.find(params[:id])
        session[:voting_id] = request.remote_ip
        voter = Session.find_or_create_by(ip: session[:voting_id])
        voter.likes @event
        redirect_to :back
      end

      def downvote
        @event = Event.find(params[:id])
        session[:voting_id] = request.remote_ip
      voter = Session.find_or_create_by(ip: session[:voting_id])
      voter.dislikes @event
        redirect_to :back
      end



  private
  def set_event
    @event = Event.find(params[:id])
  end
    def event_params
      params.require(:event).permit(:title, :shortDescription, :description, :location, :eventDate, :sponsors, :socialLink, :thumbnail)
    end

end
