class CreateWorkers < ActiveRecord::Migration[5.0]
  def change
    create_table :workers do |t|
      t.string :name
      t.integer :persnr
      t.float :gehalt
      t.datetime :eintritt

      t.timestamps
    end
  end
end
