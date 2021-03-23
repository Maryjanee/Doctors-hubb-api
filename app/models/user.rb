# frozen_string_literal: true

# user
class User < ApplicationRecord
  has_secure_password
  has_many :appointments, dependent: :destroy
  validates :email, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :username, presence: true
  validates :password_digest, presence: true
end
