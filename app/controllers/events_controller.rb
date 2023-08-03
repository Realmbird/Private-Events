class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
    # indexes all events
    @events = Event.all
  end
  def create
    @event = current_user.events.build(event_params)
    if @event.save 
      redirect_to @event
    else
      render 'new'
    end
  end
  def edit 
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to @event
    else
      render :edit
    end
  end
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to root_path
  end
  def new
    @event = current_user.events.build
  end

  def show
    @event = Event.find(params[:id])
  end
  private 
  
  def event_params 
    params.require(:event).permit(:name, :location, :date)
  end
end
