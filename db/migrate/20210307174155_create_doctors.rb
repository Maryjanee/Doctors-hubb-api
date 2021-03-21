# frozen_string_literal: true

# createdoctors
class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :name, null: false
      t.text :about, null: false
      t.text :specialization, null: false
      t.string :location, null: false
      t.string :fees, null: false
      t.string :email, null: false
      t.string :photo,
               t.timestamps
    end
  end
end
# :nodoc:
