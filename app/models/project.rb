class Project < ApplicationRecord
  belongs_to :user

  has_many :contact_projects
  has_many :contacs, :through => :contact_projects

  enum category: [:play, :television, :film, :workshop, :other]
end
