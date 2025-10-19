class Registration < ApplicationRecord
  belongs_to :attendee
  belongs_to :event

  # Callbacks
  after_create :increment_event_registrations_count
  after_destroy :decrement_event_registrations_count

  
  private
    def increment_event_registrations_count
      event.increment!(:registrations_count)
    end

    def decrement_event_registrations_count
      event.decrement!(:registrations_count)
    end
end
