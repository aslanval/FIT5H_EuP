class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :lastname
      t.string :prename
      t.date :dateofbirth
      t.string :gender
      t.string :email
      t.string :grade
      t.string :password_digest
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
