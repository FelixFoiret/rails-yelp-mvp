class Review < ApplicationRecord
  belongs_to :restaurant
  RATING = (0..5)
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: RATING, message: 'notes bien cousin!' }
end
