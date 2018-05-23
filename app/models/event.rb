class Event < ApplicationRecord
  belongs_to :user
  belongs_to :contact
  has_many :contacts, through: :user

  enum category: [:audition, :callback, :class, :other]
end
