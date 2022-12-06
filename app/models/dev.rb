class Dev < ApplicationRecord
  has_many :articles
  has_one :profile
end
