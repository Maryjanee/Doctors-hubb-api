# frozen_string_literal: true

# rubocop:disable Layout/LineLength
# rubocop:disable Metrics/BlockLength

ActiveRecord::Schema.define(version: 20_210_311_115_458) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'appointments', force: :cascade do |t|
    t.date 'date'
    t.string 'city'
    t.string 'doctor_name'
    t.string 'username'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.bigint 'user_id', null: false
    t.bigint 'doctor_id', null: false
    t.index ['doctor_id'], name: 'index_appointments_on_doctor_id'
    t.index ['user_id'], name: 'index_appointments_on_user_id'
  end

  create_table 'doctors', force: :cascade do |t|
    t.string 'name', null: false
    t.text 'about', null: false
    t.text 'specialization', null: false
    t.string 'location', null: false
    t.string 'fees', null: false
    t.string 'email', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'photo'
    t.string '#<ActiveRecord::ConnectionAdapters::PostgreSQL::TableDefinition'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', null: false
    t.string 'password_digest', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'username'
    t.bigint '{:foreign_key=>true}_id'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['{:foreign_key=>true}_id'], name: 'index_users_on_{:foreign_key=>true}_id'
  end

  add_foreign_key 'appointments', 'doctors'
  add_foreign_key 'appointments', 'users'
end
# rubocop:enable Metrics/BlockLength
# rubocop:enable Layout/LineLength
