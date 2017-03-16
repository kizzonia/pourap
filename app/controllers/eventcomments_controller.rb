class EventcommentsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @eventcomments = @event.eventcomments.create(params[:eventcomments).permit[:name, :body])

    redirect_to events_path(@event)
  end
end
