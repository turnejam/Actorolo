class Contact < ApplicationRecord
  belongs_to :user

  enum role: [:actor, :director, :writer, :casting_director, :designer, :producer, :choreographer, :other]
end
