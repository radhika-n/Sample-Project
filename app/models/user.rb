class User < ActiveRecord::Base

validates :fname, presence: true
validates :email, email_format: { message: "doesn't look like an email address" }

	has_many :event_users
  has_many :events, :through => :event_users
end
