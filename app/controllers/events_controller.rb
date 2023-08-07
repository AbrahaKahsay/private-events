class EventsController < ApplicationController
    before_action :authenticate_user!
    def index
        @events = Event.all
    end

    def new
        @event = current_user.created_events.build
    end      
    
    def create
        @event = current_user.created_events.build(event_params)
      
        if @event.save
          redirect_to @event, notice: 'Event was successfully created.'
        else
          render :new
        end
    end
      
    
end
