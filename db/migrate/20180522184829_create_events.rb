class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.references :user, foreign_key: true
      t.references :contact, foreign_key: true
      t.datetime :date
      t.string :title
      t.text :notes
      t.integer :category

      t.timestamps
    end
  end
end
