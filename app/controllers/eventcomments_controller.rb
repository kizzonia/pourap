class EventcommentsController < ApplicationController
  def create
    @event = Music.find(params[:event_id])
    @eventcomments = @event.eventcomments.create(params[:event].permit[:name, :body])

    redirect_to events_path(@event)
  end
end
