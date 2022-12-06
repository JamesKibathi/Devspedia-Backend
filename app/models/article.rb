class Article < ApplicationRecord
  belongs_to :dev

  validates :title, presence: true
  validates :content, presence: true
  validates :minutes_to_read, presence: true
  validates :featured_image, presence: true
 
end
