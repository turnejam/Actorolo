class ChangeDateTimesToDates < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :date, :date
    change_column :projects, :date, :date
  end
end
