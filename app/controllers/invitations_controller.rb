class InvitationsController < ApplicationController
  before_action :find_event, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
  def edit 
    # "/invitations/:id/edit"

  end

  def update
    #has event because of edit
    #adds current user to event attendes
    @event.attendees << current_user
    render controller: "events", action: :index
  end
  def destroy
    #has event because of edit
    #adds current user to event attendes
    @event.attendees.delete(current_user)
    redirect_to controller: "events", action: :index
  end

  # identifies event
  def find_event
    @event = Event.find(params[:id])
  end
end
