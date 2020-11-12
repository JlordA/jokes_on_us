class Gig < ApplicationRecord
  belongs_to :club
  belongs_to :user
  validate :gig_available
  validates :price, :club, :user, :date, presence: true 
  validates :price, numericality: {greater_than: 0, less_than_or_equal_to: 30}

  def gig_available
    if self.user.featured_jokes == nil
      self.errors.add(:user_id, "Comedian Needs Jokes to Get a Gig")
    elsif self.user.dogshit_joke.dislike > 30
      self.errors.add(:user_id, "Get the F Outta Here with that Trash🖕")
    elsif self.user.featured_jokes.like < self.club.req_likes
      self.errors.add(:user_id, "Not Funny Enough for This Club")
    end
  end

end
