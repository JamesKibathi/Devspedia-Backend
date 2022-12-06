class Dev < ApplicationRecord
  has_many :articles
  has_one :profile

  validates :username, presence: true, uniqueness: true
  validates :lname, presence: true
  validates :fname, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  has_secure_password
end
