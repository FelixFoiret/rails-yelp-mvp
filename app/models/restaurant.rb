class Restaurant < ApplicationRecord
  CATEGORY = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: CATEGORY, message: 'choisis bien cousin!' }
  validates :address, presence: true
  validates :name, presence: true
  validates :category, presence: true
end
