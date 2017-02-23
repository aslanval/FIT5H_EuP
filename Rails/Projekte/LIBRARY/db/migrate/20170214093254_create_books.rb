class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.references :author, foreign_key: true
      t.string :title
      t.date :year
      t.text :description

      t.timestamps
    end
  end
end
