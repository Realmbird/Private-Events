class AddingReferencesToInviations < ActiveRecord::Migration[7.0]
  def change
    # add_reference :users, :attended_event, 
    # did :users instead of attende since it is invitations table
    add_reference :invitations, :attended_event
    # add_reference :events, :attendee
    # same for events table
    add_reference :invitations, :attendee
  end
end
