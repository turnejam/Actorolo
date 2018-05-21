class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.text :contact_info
      t.integer :role, default: 0
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
