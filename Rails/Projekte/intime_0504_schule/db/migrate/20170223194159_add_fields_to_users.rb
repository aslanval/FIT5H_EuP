class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin, :boolean
    add_column :users, :moderator, :boolean
  end
end
