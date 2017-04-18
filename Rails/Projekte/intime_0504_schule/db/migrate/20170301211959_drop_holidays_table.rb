class DropHolidaysTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :holidays
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
