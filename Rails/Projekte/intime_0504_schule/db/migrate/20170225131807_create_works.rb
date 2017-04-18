class CreateWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :works do |t|
      t.datetime :start
      t.datetime :end
      t.float :diff
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
