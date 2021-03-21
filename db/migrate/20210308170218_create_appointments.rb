# frozen_string_literal: true

# createappointment
class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      add_reference :users, foreign_key: true
      t.date :date
      t.string :city
      t.string :doctor_name
      t.string :username

      t.timestamps
    end
  end
end

# :nodoc:
