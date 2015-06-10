class EventUser < ActiveRecord::Base
	 belongs_to :event
  belongs_to :user
  validates :event_date, timeliness: { on_or_before: lambda { Date.current }, type: :date }
end
