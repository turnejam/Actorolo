class Contact < ApplicationRecord
  include PgSearch
  multisearchable :against => [:name, :role]

  belongs_to :user

  has_many :contacts_events
  has_many :events, :through => :contacts_events

  has_many :contact_projects
  has_many :projects, :through => :contact_projects

  enum role: [:actor, :director, :writer, :casting_director, :designer, :producer, :choreographer, :other]
end
