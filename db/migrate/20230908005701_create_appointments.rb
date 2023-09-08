class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :date
      t.string :hour
      t.string :duration
      t.references :veterinary, null: false, foreign_key: true
      t.references :pet, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
