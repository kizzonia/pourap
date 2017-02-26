class EventsController < InheritedResources::Base
  layout "bloggers", except:[:index, :show]
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  def index
    @events = Event.all.order('created_at DESC')
    @abouts = About.all

  end

  def show
    @events = Event.all.order('created_at DESC').limit(4).offset(1)
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
    else
      render 'new'
    end
  end

    def update
      if @event.update(event_params)
        redirect_to @event
      else
        render "edit"
      end
    end

      def destroy
        @event.destroy
        redirect_to @events
      end



  private
  def set_event
    @event = Event.find(params[:id])
  end
    def event_params
      params.require(:event).permit(:title, :shortDescription, :description, :location, :eventDate, :sponsors, :socialLink, :thumbnail)
    end

end
