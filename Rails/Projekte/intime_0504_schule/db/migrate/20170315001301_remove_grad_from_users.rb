class RemoveGradFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :grade, :string
  end
end
