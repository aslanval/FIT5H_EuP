class CreateMitarbeiterdbs < ActiveRecord::Migration[5.0]
  def change
    create_table :mitarbeiterdbs do |t|
      t.string :name
      t.integer :personalnr
      t.datetime :eintritt
      t.float :gehalt

      t.timestamps
    end
  end
end
