class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :race
      t.string :date_of_birth
      t.string :medical_hostory
      t.string :additional_notes
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
