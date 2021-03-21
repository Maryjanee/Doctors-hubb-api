# frozen_string_literal: true

# doctor
class Doctor < ApplicationRecord
  has_many :appointments, dependent: :destroy
  validates :name, presence: true
  validates :about, presence: true
  validates :specialization, presence: true
  validates :location, presence: true
  validates :fees, presence: true
  validates :email, presence: true
  validates :photo, presence: true
end
