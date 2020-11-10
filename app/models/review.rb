class Review < ApplicationRecord
  belongs_to :club
  validates :rating, numericality: {greater_than: 0, less_than_or_equal_to: 5}
  validates :rating, :date, :club, :content, presence: true
end
