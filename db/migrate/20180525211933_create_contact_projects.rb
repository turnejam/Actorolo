class CreateContactProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_projects, :id => false do |t|
    t.references :contact, foreign_key: true
    t.references :project, foreign_key: true
    t.timestamps
  end
  end
end
