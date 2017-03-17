class EventcommentsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @eventcomment = @event.eventcomments.create(params[:eventcomment].permit(:name, :body))

    redirect_to events_path(@event)
  end
  def destroy
  @event = Event.find(params[:event_id])
  @eventcomment = @event.eventcomments.find(params[:id])
  @eventcomment.destroy

  redirect_to event_path(@event)

end
end
