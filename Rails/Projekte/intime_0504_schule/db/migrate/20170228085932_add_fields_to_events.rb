class AddFieldsToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :accepted, :boolean
    add_column :events, :user_id, :integer
  end
end
