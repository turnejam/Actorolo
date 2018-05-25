class Contact < ApplicationRecord
  belongs_to :user
  has_many :contacts_events
  has_many :events, :through => :contacts_events

  enum role: [:actor, :director, :writer, :casting_director, :designer, :producer, :choreographer, :other]
end
