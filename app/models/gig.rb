class Gig < ApplicationRecord
  belongs_to :club
  belongs_to :user
  # validate :gig_available
  validates :price, :club, :user, :date, presence: true 
  validates :price, numericality: {greater_than: 0, less_than_or_equal_to: 30}

  def gig_available
    if self.user.featured_jokes.like < self.club.req_likes
      byebug
      self.errors.add(:user_id, "Not Funny Enough for This Club")
    end
  end

end
