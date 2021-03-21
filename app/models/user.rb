# frozen_string_literal: true

# user
class User < ApplicationRecord
  has_secure_password
  has_many :appointments, dependent: :destroy
  validates :email, uniqueness: true
  validates :username, presence: true
  validates_format_of :email, with: /@/
  validates :password_digest, presence: true
end
