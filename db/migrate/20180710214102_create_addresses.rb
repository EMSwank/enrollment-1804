class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :description
      t.string :street
      t.string :city
      t.integer :zip_code
      t.references :student_id, foreign_key: true

      t.timestamps
    end
  end
end
