class Contact < ApplicationRecord
  belongs_to :user
  has_many :events

  enum role: [:actor, :director, :writer, :casting_director, :designer, :producer, :choreographer, :other]
end
