class Joke < ApplicationRecord
  belongs_to :user
  validates :content, presence: true

  def likes
    self.likes += 1
  end
end
