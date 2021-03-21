# frozen_string_literal: true

# appointment
class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :doctor
  validates :date, presence: true
  validates :city, presence: true
  validate :date_cannot_be_in_the_past

  def date_cannot_be_in_the_past
    errors.add(:date, "can't be in the past") if date <= Date.today
  end
end
