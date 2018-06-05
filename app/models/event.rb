class Event < ApplicationRecord
  include PgSearch
  multisearchable :against => [:title, :category]

  belongs_to :user

  has_many :contacts_events
  has_many :contacts, :through => :contacts_events

  enum category: [:audition, :callback, :class, :other]
end
