class ContactsEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts_events, :id => false do |t|
      t.references :contact, foreign_key: true
      t.references :event, foreign_key: true
    end
  end
end
