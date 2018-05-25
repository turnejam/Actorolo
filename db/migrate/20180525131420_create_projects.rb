class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.text :notes
      t.datetime :date
      t.integer :category

      t.timestamps
    end
  end
end
