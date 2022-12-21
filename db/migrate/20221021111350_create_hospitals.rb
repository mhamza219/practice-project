class CreateHospitals < ActiveRecord::Migration[6.1]
  def change
    create_table :hospitals do |t|
      t.string :patient_name
      t.string :blood_group
      t.integer :age
      t.text :address

      t.timestamps
    end
  end
end
