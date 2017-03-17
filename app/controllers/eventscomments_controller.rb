class EventscommentsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @eventscomment = @event.eventscomments.create(params[:eventscomment].permit(:name, :body))

    redirect_to event_path(@event)
  end
  def destroy
  @event = Event.find(params[:event_id])
  @eventscomment = @event.eventscomments.find(params[:id])
  @eventscomment.destroy

  redirect_to event_path(@event)

end
end
