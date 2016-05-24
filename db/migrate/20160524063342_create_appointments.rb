class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :patient_id
      t.integer :user_id
      t.string :description

      t.timestamps
    end
  end
end
