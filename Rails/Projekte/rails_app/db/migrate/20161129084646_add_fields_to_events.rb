class AddFieldsToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :start_date, :datime
    add_column :events, :description, :text
  end
end
