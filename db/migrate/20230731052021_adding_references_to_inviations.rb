class AddingReferencesToInviations < ActiveRecord::Migration[7.0]
  def change
    # add_reference :users, :attended_event, 
    # did :users instead of attende since it is invitations table
    add_reference :invitations, :attended_event
    # same for events table
    add_reference :invitations, :attendee
    # add_foreign_key :invitations, :users, column: :attendee_id
  end
end
