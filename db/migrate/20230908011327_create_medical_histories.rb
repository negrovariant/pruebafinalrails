class CreateMedicalHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_histories do |t|
      t.string :content
      t.references :pet, null: false, foreign_key: true
      t.references :appointment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
