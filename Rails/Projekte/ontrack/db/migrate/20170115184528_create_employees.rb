class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :vorname
      t.string :nachname
      t.string :username
      t.integer :project_id
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
