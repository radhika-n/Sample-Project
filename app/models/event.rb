class Event < ActiveRecord::Base

validates :name, presence: true 
validate :event_date_cannot_be_in_the_past

  def event_date_cannot_be_in_the_past
    errors.add(:event_date, "can't be in the past") if
      !event_date.blank? and event_date < Date.today
  end


	has_many :event_users
  has_many :users, :through => :event_users
end
